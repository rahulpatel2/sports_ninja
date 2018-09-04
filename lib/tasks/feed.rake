require 'rss'
namespace :news  do
  desc "Feed the News"
  task :feed => :environment do
    Source.all.each do|source|
      feed = RSS::Parser.parse(source.rss_url)
      feed.items.each do |item|
        begin
          page = MetaInspector.new(item.link, faraday_options: { ssl: { verify: false } })
          next unless page.response.status == 200
          Article.create(source_id: source.id, title: page.best_title, author: page.best_author,
                         url: page.url, image_url: page.images.best, description: page.best_description)
        rescue Exception => e
          puts "Error: - #{e}"
        end
      end
    end
  end
end
