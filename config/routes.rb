Rails.application.routes.draw do

  get('/add', { :controller => 'application', :action => 'add_form'})

  get('/wizard_add', { :controller => 'application', :action => 'add_results'})

  get('/subtract', { :controller => 'application', :action => 'subtract_form'})

  get('/wizard_subtract', { :controller => 'application', :action => 'subtract_results'})

  get('/multiply', { :controller => 'application', :action => 'multiply_form'})

  get('/wizard_multiply', { :controller => 'application', :action => 'multiply_results'})

  get('/divide', { :controller => 'application', :action => 'divide_form'})

  get('/wizard_divide', { :controller => 'application', :action => 'divide_results'})

  #Def action pending
  get("/muggle_translate", {:controller => 'api', :action=>'translate'})
        
  get("/street_to_coords/new", {:controller => 'api', :action => 'street_to_coords_form'})

  get("/street_to_coords/results", {:controller => 'api', :action => 'street_to_coords_results'})
        
  get("/coords_to_weather/new", {:controller => 'api', :action => 'coords_to_weather_form'})

  get("/coords_to_weather/results", {:controller => 'api', :action => 'coords_to_weather_results'})
        
  get("/street_to_weather/new", {:controller => 'api', :action => 'street_to_weather_form'})

  get("/street_to_weather/results", {:controller => 'api', :action => 'street_to_weather_results'})
        


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
