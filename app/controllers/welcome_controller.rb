class WelcomeController < ApplicationController
  require 'powerpoint'

  def index
  	
  end

  def generate_blank
  	@deck = Powerpoint::Presentation.new
  	@deck.save('public/test.pptx')
  	send_file 'public/test.pptx'
  end
end
