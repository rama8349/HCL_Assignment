class HomeController < ApplicationController
	def index
		@ques =Question.all
		
	end
end
