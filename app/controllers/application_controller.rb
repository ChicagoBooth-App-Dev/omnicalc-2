class ApplicationController < ActionController::Base

  def add_form
    render({:template => 'calculations/add_template.html.erb'})
  end

  def add_results
    render({:template => 'calculations/add_results.html.erb'})
  end
end
