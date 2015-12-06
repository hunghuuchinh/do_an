class AddLatToPitches < ActiveRecord::Migration
  def change
    add_column :pitches, :lat, :float
    add_column :pitches, :lng, :float
  end
end
