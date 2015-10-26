class Listing < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg",
		  	:storage => :dropbox,
      		:dropbox_credentials => Rails.root.join("config/dropbox.yml")
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  #check to see whether all the fields have been filled
  validates :name, :description, :price, presence: true

  #make sure that the price field is popilated by a number greater than 0
  validates :price, numericality: { greater_than: 0 }

  #validate image
  validates_attachment_presence :image
end
