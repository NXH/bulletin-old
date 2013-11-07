Bulletin::Application.routes.draw do
  get("/landing", {:controller => 'pages', :action => 'landing'})
  get("/user_home", {:controller => 'pages', :action => 'user_home'})
  get("/new_account", {:controller => 'pages', :action => 'new_account'})
  get("/create_account", {:controller => 'pages', :action => 'create_account'})
  get("/event/:event_id", {:controller => 'pages', :action => 'event'})
  get("/create_event", {:controller => 'pages', :action => 'create_event'})

end
