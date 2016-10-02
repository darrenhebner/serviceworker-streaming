class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    if params[:shell] == 'true'
      render :layout => false
    end
  end

  def show
    @article = Article.find(params[:id])

    if params[:shell] == 'true'
      render :layout => false
    end
  end

  def new
    if params[:shell] == 'true'
      render :layout => false
    end
  end

  def create
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
