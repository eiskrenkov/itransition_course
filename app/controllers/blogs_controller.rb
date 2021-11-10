class BlogsController < ApplicationController
  before_action :find_blog, only: %i[show]

  def index
    @blogs = Blog.all
  end

  def show
    @posts = @blog.posts
  end

  private

  def find_blog
    @blog = Blog.find(params[:id])
  end
end
