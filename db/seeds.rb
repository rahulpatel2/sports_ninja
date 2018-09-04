# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

sources = [ { name: "The Times of India", rss_url: "https://timesofindia.indiatimes.com/rssfeeds/4719148.cms" },
            { name: "The Hindu", rss_url: "https://www.thehindu.com/sport/feeder/default.rss" },
            { name: "Indian Express", rss_url: "https://indianexpress.com/section/sports/feed/" },
            { name: "Hindustan Times", rss_url: "https://www.hindustantimes.com/rss/sports/rssfeed.xml" },
            { name: "India Today", rss_url: "https://www.indiatoday.in/rss/1206518" }
          ]
sources.each do |source|
  Source.create(name: source[:name], rss_url: source[:rss_url])
end
