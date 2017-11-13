class ArticleController < ApplicationController

  def create_index
    render 'article/create'
  end

  def create
    @article = Article.new({"title" => params[:title], "link" => params[:link]})
    if @article.save
      redirect_to '/'
    else
      redirect_to '/article/create'
    end
  end

  def delete
    #delete article with passed param id
  end

  def list
    #return Article.all
  end

  def single
    #render single view with article with find(param :id)
  end

end
