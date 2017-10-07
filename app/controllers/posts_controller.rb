class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def new
  end

  def edit
    #post = Post.find(0)
    #post.update(:title => "flying spaghetti monster")
    #redirect_to :back
  end
end
