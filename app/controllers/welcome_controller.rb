class WelcomeController < ApplicationController
	def index
		@websites_best = Website.order(:likes).reverse_order.limit(4)
		@websites_last = Website.order(:created_at).reverse_order.limit(4)
		@websites_count = @websites_best.count
	end

	def all
		@websites = Website.order(:likes)
	end
	
	def author
		params[:user_id]
		@websites = Website.where(:user_id => params[:id])
	end
end
