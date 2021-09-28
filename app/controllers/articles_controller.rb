class ArticlesController < ApplicationController

  before_action :set_articles, only: [:show, :edit, :destroy, :update]
  def index
    @articles = Article.all
  end
  def show
  end

  def new
    @article =  Article.new
  end

  def create
    @article = Article.new(set_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  

  def edit
  end

  def update
    if @article.update(set_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end
  private
  def set_articles
    @article = Article.find(params[:id])
  end

  def set_params
    params.require(:article).permit(:title, :description)
  end
end