class CmspagesController < ApplicationController
  def index
    @cmspages = Cmspage.all
  end
  
  def show
    @cmspages = Cmspage.all
    redirect_to '/admin' and return if @cmspages.empty?
    if !@cmspages.empty?
      @cmspage = Cmspage.find(params[:id]||@cmspages.first.id)
      @components = @cmspage.components.all 
    end
    render :layout => "external"
  end
  
  def new
    @cmspage = Cmspage.new
  end
  
  def create
    @cmspage = Cmspage.new(params[:cmspage])
    if @cmspage.save
      flash[:notice] = "Successfully created cmspage. You may now add components as needed below."
      @components = @cmspage.components.all 
      respond_to do |format|  
       format.html { redirect_to @cmspage }  
       format.js
      end  
    else
      render :action => 'new'
    end
  end
  
  def edit
    @cmspage = Cmspage.find(params[:id])
    @components = @cmspage.components
    @posts = Post.all(:limit => 5, :order => 'created_at DESC')
    respond_to do |format|  
       format.html
       format.js
      end  
  end
  
  def update
    @cmspage = Cmspage.find(params[:id])
    if @cmspage.update_attributes(params[:cmspage])
      flash[:notice] = "Successfully updated cmspage."
      respond_to do |format|  
       format.html { redirect_to @cmspage }  
       format.js
      end  
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @cmspage = Cmspage.find(params[:id])
    @cmspage.destroy
    flash[:notice] = "Successfully destroyed cmspage."
    redirect_to cmspages_url
  end
end
