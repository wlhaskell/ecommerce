class StorefrontController < ApplicationController
	
	def all_items
		@products = Product.all
	end

	def items_by_brand
	end

	def items_by_category
	end

end
