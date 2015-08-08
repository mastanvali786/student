class Student2 < ActiveRecord::Base
	  # attr_accessible  :image
mount_uploader :image, ImageUploader
validates :student_name, uniqueness: true, presence: true
validates :student_no, numericality: true, presence: true
# def validate_each(record, attribute, value)
#     record.errors.add attribute, (options[:message] || "is not an email") unless
#      value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
#   end
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
 #attr_accessible :gallery_id, :name, :image, :remote_image_url
  #belongs_to :gallery
 
  end
