class MovieCategory < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many 
  :movies
end
