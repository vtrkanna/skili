class Trainer < ActiveRecord::Base

  belongs_to :user
  has_many :skills
  has_many :students
  
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
 
  searchable do
   text :first_name, :last_name
  end
end
