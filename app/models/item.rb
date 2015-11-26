class Item < ActiveRecord::Base
	dragonfly_accessor :image
	translates :variable1, :variable2, :variable3, :variable4, :value1, :value2, 
			   :value3, :value4, :comment, :item_name
end
