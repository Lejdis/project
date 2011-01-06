class AddDataToFilms < ActiveRecord::Migration
  def self.up
    add_column :films, :data, :date
  end

  def self.down
    remove_column :films, :data
  end
end
