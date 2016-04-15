class PostController < ApplicationController
  def show
    category = Category.find(params[:category_id])
  	@post = Post.find(params[:id])
  	@posts = category.posts
  	@category = Category.find(params[:category_id])
  	@categories = Category.all
  	@posts = Post.all
  end
end
