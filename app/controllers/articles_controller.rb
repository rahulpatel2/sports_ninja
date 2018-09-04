class ArticlesController < ApplicationController
  def index
    articles = all_articles
    @count =  articles.count
    @articles = articles.paginate(limit_param, offset_param).order('title asc')
  end

  private

  def all_articles
    articles = Article.all
    params[:source_id].present? ? articles.where(source_id: params[:source_id]) : articles
  end
end
