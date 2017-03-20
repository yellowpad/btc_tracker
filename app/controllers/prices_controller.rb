require 'rest-client'
require 'json'

class PricesController < ApplicationController

	def index 
		@prices = Price.all.order("created_at DESC")
	end

	def show 
	end

end
