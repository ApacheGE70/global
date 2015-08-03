class Component < ActiveRecord::Base
	belongs_to :page
	has_many :likes
end
