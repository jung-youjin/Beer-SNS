class Beerdb < ActiveRecord::Base
   # has_and_belongs_to_many :breweryposts
   has_and_belongs_to_many :posts
   belongs_to :home
   
 # def self.beersearchsim(beersearchsim)
 # where("name LIKE ? OR brewery LIKE ? OR style LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
 #  end
end