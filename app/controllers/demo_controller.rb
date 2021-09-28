class DemoController < ApplicationController
  layout false
  
  def index
    # render('index')
  end

  def hello
    # render('hello')
    # redirect_to(:controller => 'demo', :action => 'index')
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
  end 

  def about
    render('about_us')
  end

  def contact
    @country = params[:country]
    
    if ['us', 'ca'].include?(params[:country])
      @phoneNumber = '(800) 555-6789'
    elsif params[:country] == 'uk'
      @phoneNumber = '(020) 7946 1234'
    else
      @phoneNumber = '+1 (987) 654-3210'
    end

    render('contact_us')
  end
end
