class Skill < ActiveRecord::Base

  searchable do
    text :name, :title, :description
    boolean :active
  end

end
