class CreateMovieCategories < ActiveRecord::Migration
  def change
    create_table :movie_categories do |t|

      t.timestamps
    end
  end
end
