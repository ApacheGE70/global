class Like < ActiveRecord::Base
	belongs_to :component
	belongs_to :user
end
