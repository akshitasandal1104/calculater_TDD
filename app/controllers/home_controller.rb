class HomeController < ApplicationController
	def index
		if params[:numbers]
			calculator = StringCalculator.new
			begin
				@result = calculator.add(params[:numbers])
			rescue => e
				@error = e.message
			end
		end
	end
end
  