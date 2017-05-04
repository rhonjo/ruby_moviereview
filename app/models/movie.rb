class Movie < ActiveRecord::Base
	belongs_to :users

	has_attached_file :image, styles: { medium: "400x600#" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
