class Movie < ActiveRecord::Base
  attr_accessible :name, :movie_category_id
  belongs_to
  :movie_category
end
