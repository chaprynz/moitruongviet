class CategoryController < ApplicationController
  def index
    @categories = Category.all
    @posts = Post.all
    
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
  	@posts = @category.posts
  end
  
  def tintuc
  	@categories = Category.all
  	@posts = Post.all
  end
  def gioithieu
  	@categories = Category.all
  	@posts = Post.all
  end
  def khachhang
  	@categories = Category.all
  	@posts = Post.all
  end
  def video
  	@categories = Category.all
  	@posts = Post.all
  end
  def tatca
  	@categories = Category.all
  	@posts = Post.all
  end
end
