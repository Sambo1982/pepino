class FeaturesController < ApplicationController
before_filter :load_product
	
	def new
		@feature = @products.features.build
	end

private

	def load_products
	  @product = Product.find(params[:product_id])
	end
end
