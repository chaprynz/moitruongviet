class Post < ActiveRecord::Base
    belongs_to :category
    has_attached_file :image, :styles => { :medium => "680x300>", :thumb => "170x75>" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    validates :title, presence: true, length: { maximum: 50 }
	validates :content, presence: true
	
end
