class EventsController < ApplicationController
  radiant_layout 'Events'
  no_login_required

  def index
    @date = Date.civil(params[:year].to_i, params[:month].to_i, params[:day].to_i)
    @events = Event.for_date(@date) if @date
  end
  
  def show
    @event = Event.find(params[:id])
  end

end
