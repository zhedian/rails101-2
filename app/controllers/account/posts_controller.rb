class Account::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts
  end

  def edit
    @group = Group.find(params[:group_id])
    @post = Post.find(params[:post_id])
  end

  def destroy
    @group = Group.find(params[:group_id])
    @post = Post.find(params[:post_id])
    @post.destroy
    redirect_to posts_path
  end
end
