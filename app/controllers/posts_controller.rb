class PostsController < ApplicationController
  def index
    @posts = Post.censoredList
  end

  def show
  end

  def new
  end

  def edit
  end
end
