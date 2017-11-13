class HomeController < ApplicationController
  def index
    @articles = Article.all
    render 'home/index'
  end
end
