class PagesController < ApplicationController
  def landing

  end
  def new_account

  end
  def create_account
    @t = Calendar.new
    @t.person1 = params[:person1]
    @t.person2 = params[:person2]
    @t.nickname = params[:nickname]
    @t.password_digest = params[:password_digest]
    @t.save
  end
  def user_home

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
  def create_event
    @e = Event.new
    @e.title = params[:title]
    @e.description = params[:description]
    @e.location = params[:location]
    @e.start_time = params[:start_time]
    @e.end_time = params[:end_time]
    @e.person1 = params[:person1]
    @e.person2 = params[:person2]
    @e.save
  end
end
