class ApplicationController < ActionController::Base

  def add_form
    @operation = 'addition'
    @op1 = 'Add'
    @op2 = 'to'
    @calculation = '/wizard_add'
    render({:template => 'calculations/form_template.html.erb'})
  end

  def add_results
    @operation = 'Addition'
    @num1 = params.fetch('num1').to_f
    @num2 = params.fetch('num2').to_f
    @result = @num1 + @num2
    @home = "/add"
    render({:template => 'calculations/calculation_results.html.erb'})
  end

  def subtract_form
    @operation = 'subtraction'
    @op1 = 'Subtract'
    @op2 = 'from'
    @calculation = '/wizard_subtract'
    render({:template => 'calculations/form_template.html.erb'})
  end

  def subtract_results
    @operation = 'Subtraction'
    @num1 = params.fetch('num1').to_f
    @num2 = params.fetch('num2').to_f
    @result = @num1 - @num2
    @home = "/subtract"
    render({:template => 'calculations/calculation_results.html.erb'})
  end

  def multiply_form
    @operation = 'multiplication'
    @op1 = 'Multiply'
    @op2 = 'by'
    @calculation = '/wizard_multiply'
    render({:template => 'calculations/form_template.html.erb'})
  end

  def multiply_results
    @operation = 'Multiplication'
    @num1 = params.fetch('num1').to_f
    @num2 = params.fetch('num2').to_f
    @result = @num1 * @num2
    @home = "/multiply"
    render({:template => 'calculations/calculation_results.html.erb'})
  end

  def divide_form
    @operation = 'division'
    @op1 = 'Divide'
    @op2 = 'by'
    @calculation = '/wizard_divide'
    render({:template => 'calculations/form_template.html.erb'})
  end

  def divide_results
    @operation = 'Division'
    @num1 = params.fetch('num1').to_f
    @num2 = params.fetch('num2').to_f
    @result = @num1 / @num2
    @home = "/divide"
    render({:template => 'calculations/calculation_results.html.erb'})
  end  

end
