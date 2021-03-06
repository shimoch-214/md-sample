class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(create_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  private
  def create_params
    params.require(:article).permit(:body)
  end
end
