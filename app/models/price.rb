class Price < ApplicationRecord

require 'pry'
require 'rest-client'
require 'json'
	

	def self.get_data

		blockchain_url = 'https://blockchain.info/ticker'

		btc_data = JSON.parse(RestClient.get(blockchain_url).body)	
		
		price_data = btc_data['USD']['buy']
		
		price = Price.new(price: price_data)
		
		price.save
		
	end

end
