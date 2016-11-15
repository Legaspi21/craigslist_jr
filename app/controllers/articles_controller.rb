class ArticlesController < ApplicationController
  def index
  	@category = Category.find(params[:category_id])
  	@articles = @category.articles
  end

	def show
    @category = Category.find(params[:category_id])
	  @article = Article.find(params[:id])
	end
	
  def new
  	@article = Article.new
  end

  def create
    @category = Category.find(params[:category_id])
  	@article = @category.articles.new(article_params)
 
	  if @article.save
	    redirect_to category_path(@category)
	  else
	    redirect_to 'articles#new'
	  end
	end

  def destroy
    @category = Category.find(params[:category_id])
    @article = @category.articles.find(params[:id])
    @article.destroy
    redirect_to category_path(@category)
  end

  def edit
  end
 
private
  def article_params
    params.require(:article).permit(:name, :body, :price)
  end
end