class WelcomeController < ApplicationController
	def index
		@websites_best = Website.order(:likes).reverse_order.limit(4)
		@websites_last = Website.order(:created_at).reverse_order.limit(4)
		@websites_count = @websites_best.count
	end

	def all
		@websites_all = Website.order(:likes)
		@rows = @websites_all.count / 3
		@rest = @websites_all.count % 3
	end
	
	def author
		@websites_author = Website.order(:user_id)
		@columns = @websites_author.count / 3
		@rest = @websites_author.count % 3
	end
end
