class Beerdb < ActiveRecord::Base
    has_and_belongs_to_many :breweryposts
end
