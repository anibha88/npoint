class WelcomeController < ApplicationController
  require 'powerpoint'

  def index
  	
  end

  def generate_blank
  	@deck = Powerpoint::Presentation.new
  	@deck.save('public/blank_ppt.pptx')
  	send_file 'public/blank_ppt.pptx'
  end

  def generate_hardcoded
  	@deck = Powerpoint::Presentation.new

	# Creating an introduction slide:
	title = 'Bicycle Of the Mind'
	subtitle = 'created by Steve Jobs'
	@deck.add_intro title, subtitle

	# Creating a text-only slide:
	# Title must be a string.
	# Content must be an array of strings that will be displayed as bullet items.
	title = 'Why Mac?'
	content = ['Its cool!', 'Its light.']
	@deck.add_textual_slide title, content

	@deck.save('public/hardcoded_ppt.pptx')
  	send_file 'public/hardcoded_ppt.pptx'
  end

  def user_entered
  end

  def process_info
  	@deck = Powerpoint::Presentation.new
	title = params[:title]
	subtitle = params[:subtitle]
	  # do whatever you want...
	@deck.add_intro title, subtitle

	@deck.save('public/user_entered_ppt.pptx')
  	send_file 'public/user_entered_ppt.pptx'
  end
end
