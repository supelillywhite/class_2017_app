class Restaurant < ApplicationRecord
  belongs_to :user

  # def self.search(search)
  #   where("name ILIKE ? OR location ILIKE ? OR category ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  # end
  # # **** When using Postgresql us ILIKE in place of LIKE
  def self.search(search)
    where("name ILIKE", "%#{search}%") 
  end

end




