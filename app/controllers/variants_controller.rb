class VariantsController < ApplicationController
	def index
	end

	def show
		@variants = Variants.all
	end

	def edit
	end

	def create
		@variant = Variant.new params[:variant]
		@variant.product_id = params[:product_id]

		if @variant.valid?
      		@variant.save
      		return redirect_to product_variant, notice: "Your variant #{@variant.name} has been created!"
    	end
	end

	def new
		@variant = Variant.new
  	end
end
