class Category < ActiveRecord::Base
    has_many :posts
    validates :name, presence: true, length: { maximum: 50 }
	validates :content, presence: true
end
