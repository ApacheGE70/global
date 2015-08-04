class WelcomeController < ApplicationController
	def index
		@websites_best = Website.order(:likes).reverse_order.limit(5)
		@websites_last = Website.order(:created_at).reverse_order.limit(5)
	end

	def all
		@websites_all = Website.order(:likes)
		@columns = @websites_all.count / 4
		@rest = @websites_all.count % 4
	end
	
	def author
		@websites_author = Website.order(:user_id)
		@columns = @websites_author.count / 4
		@rest = @websites_author.count % 4
	end
end
