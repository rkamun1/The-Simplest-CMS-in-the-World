class PollsController < ApplicationController
  def index
    @polls = Poll.all
  end
  
  def show
    @poll = Poll.find(params[:id])
  end
  
  def new
    @poll = Poll.new
  end
  
  def create
    @poll = Poll.new(params[:poll])
    if @poll.save
      flash[:notice] = "Successfully created poll."
      redirect_to @poll
    else
      render :action => 'new'
    end
  end
  
  def edit
    @poll = Poll.find(params[:id])
  end
  
  def update
    @poll = Poll.find(params[:id])
    if @poll.update_attributes(params[:poll])
      flash[:notice] = "Successfully updated poll."
      redirect_to @poll
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @poll = Poll.find(params[:id])
    @poll.destroy
    flash[:notice] = "Successfully destroyed poll."
    redirect_to polls_url
  end
end
