class PollsController < ApplicationController 
  before_filter :tally_vote, :only => :update
  def edit
    @component = Component.find(params[:id])
  end
  
  def update
    @component = Component.find(params[:id])
    id = params[:id]
    if !session[id]      
      if @component.update_attributes(params[:poll])
        session[id] = true
        flash[:notice] = "Successfully updated poll."
        respond_to do |format|  
         format.html { redirect_to @component }  
         format.js
        end        
      else
        render :action => 'edit'
      end
    else
      puts "you cant do that dude"
      respond_to do |format|  
         format.js {render :fail}
        end        
    end
  end
  
  def destroy
    @component = Component.find(params[:id])
    @component.destroy
    flash[:notice] = "Successfully destroyed poll."
    redirect_to polls_url
  end

private
  def tally_vote
    component = Component.find(params[:id])
    if(params[:poll][:yes]=="true")
      params[:poll][:yes] = (component.yes||0) + 1 
    else
      params[:poll][:yes] = (component.yes||0)
      params[:poll][:no] = (component.no||0) + 1 
    end
    params[:poll][:total_votes] = (component.yes||0) + (component.no||0) + 1

  end
end
