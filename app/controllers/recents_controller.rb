class RecentsController < ApplicationController 
  def edit
    @component = Component.find(params[:id])
  end
  
  def update
    @component = Component.find(params[:id])
    if @component.update_attributes(params[:recent])
      flash[:notice] = "Successfully updated poll."
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
    flash[:notice] = "Successfully destroyed poll."
    redirect_to polls_url
  end
end
