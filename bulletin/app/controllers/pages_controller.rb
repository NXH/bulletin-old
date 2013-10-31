class PagesController < ApplicationController
  def landing
    render('landing')
  end
  def create_account
    render('create_account')
  end
  def user_home
    render('user_home')
  end
  def event
    @event_num = params[:event_id].to_i
    @event_title = Event.find(@event_num).title
    @event_desc = Event.find(@event_num).description
    @event_loc = Event.find(@event_num).location
    @event_start = Event.find(@event_num).start_time
    @event_end = Event.find(@event_num).end_time
    @event_cat = Event.find(@event_num).category_id
    @event_p1 = Event.find(@event_num).person1
    @event_p2 = Event.find(@event_num).person2
  end
end
