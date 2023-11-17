class ChangeRatingClassToFloatInMovies < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :rating, :float
  end
end
