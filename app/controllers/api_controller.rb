class ApiController < ActionController::Base

  def street_to_coords_form
    @operation = 'coordinates'
    @button_msg = 'Lookup Coordinates!'
    @calculation = '/street_to_coords/results'
    
    render({:template => '/calculations/street_to_coordinates_form.html.erb'})
  end
  
  def street_to_coords_results
    @address = params.fetch('address')
    @operation = 'coordinates'

    @geocode_request = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + @address + '&key=' + ENV.fetch('GMAPS_KEY')
    
    raw_data = open(@geocode_request).read
    parsed_data = JSON(raw_data).fetch('results').at(0)
    geometry = parsed_data.fetch('geometry')
    location = geometry.fetch('location')

    @latitude = location.fetch('lat')
    @longitude = location.fetch('lng')

    render({:template => '/calculations/street_to_coordinates_results.html.erb'})
  end

  def street_to_weather_form
    @operation = 'weather'
    @button_msg = 'Tell me the weather!'
    render({:template => '/calculations/street_to_form.html.erb'})
  end


  def coords_to_weather_form
  @calculation = '/coords_to_weather/results'
  

  render( {:template => '/calculations/coordinates_to_weather_form.html.erb'})

  end 
    
  def coords_to_weather_results
    # Parameters: {"Latitude"=>"41.8", "Longitude"=>"-87.6"}
    @latitude = params.fetch('Latitude')
    @longitude = params.fetch('Longitude')
    @weather_request = 'https://api.darksky.net/forecast/' + ENV.fetch('DARK_SKY_KEY') + '/' + @latitude + ',' + @longitude

    @raw_data = open(@weather_request).read
    @parsed_data = JSON.parse(@raw_data)

    @current_temp = @parsed_data.fetch("currently").fetch("temperature")
    @current_summ = @parsed_data.fetch("currently").fetch("summary")
    @minutely_summ = @parsed_data.fetch("minutely").fetch("summary")
    @hourly_summ = @parsed_data.fetch("hourly").fetch("summary")
    @daily_summ = @parsed_data.fetch("daily").fetch("summary")

    render( {:template => '/calculations/coordinates_to_weather_results.html.erb'})
  end

end