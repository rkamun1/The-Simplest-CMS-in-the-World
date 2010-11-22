class ComponentsController < ApplicationController
  def index
    @components = Component.all
  end
  
  def show
    @component = Component.find(params[:id])
  end
  
  def new
    @component = Component.new
  end
  
  def create
    params[:component].merge!(:width => 500,:height=>200 ,:left=>0,:top=>0) #initial positioning
    @component = Component.new(params[:component])
    if @component.save
      @components = @component.cmspage.components.all
      flash[:notice] = "Successfully created component."
      respond_to do |format|  
       format.html { redirect_to @component }  
       format.js
      end        
    else
      render :action => 'new'
    end
  end
  
  def edit
    @component = Component.find(params[:id])
  end
  
  def update
    @component = Component.find(params[:id])
    if @component.update_attributes(params[:component])
      flash[:notice] = "Successfully updated component."
      respond_to do |format|  
       format.html { redirect_to @component }  
       format.js
      end        
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @component = Component.find(params[:id])
    @component.destroy
    flash[:notice] = "Successfully destroyed component."
    respond_to do |format|  
       format.html
       format.js
      end      
  end
end
