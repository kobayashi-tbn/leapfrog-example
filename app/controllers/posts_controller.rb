class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    set_username_to_post
    if @post.save
      redirect_to posts_url, :notice => "Successfully created post."
    else
      render :action => 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    set_username_to_post
    if @post.update_attributes(params[:post])
      redirect_to posts_url, :notice  => "Successfully updated post."
    else
      render :action => 'edit'
    end
  end
  
  #protected
  
  def set_username_to_post
    user = current_user
    @post.username = user.username
    p @post
  end

end
