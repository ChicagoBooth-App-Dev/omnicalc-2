class ApplicationController < ActionController::Base

  def add_form
    render({:template => 'calculations/add_template.html.erb'})
  end

end
