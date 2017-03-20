module PricesHelper
	
	def data_set
		data_holder = [ [], [] ]

		data_tracker = Price.last(60)
		data_tracker.each do |d|
			data_holder[0] << d.price
		end
		data_holder[1] = *(1..60)
		# binding.pry
		data_holder
	end 
end
