class PostsController < ApplicationController
layout "external"
  def index
    @posts = Post.all
    @cmspages = Cmspage.all
  end
  
  def show
    @post = Post.find(params[:id])
    @cmspages = Cmspage.all
  end
  
  def new
    @post = Post.new
    @cmspages = Cmspage.all
  end
  
  def create
    @post = Post.new(params[:post])
    @cmspages = Cmspage.all
    if @post.save
      flash[:notice] = "Successfully created post."
      redirect_to blog_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @post = Post.find(params[:id])
    @cmspages = Cmspage.all
  end
  
  def update
    @post = Post.find(params[:id])
    @cmspages = Cmspage.all
    if @post.update_attributes(params[:post])
      flash[:notice] = "Successfully updated post."
      redirect_to blog_url
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @cmspages = Cmspage.all
    @post.destroy
    flash[:notice] = "Successfully destroyed post."
    redirect_to posts_url
  end
end
