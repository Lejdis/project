class RemoveDFromFilms < ActiveRecord::Migration
  def self.up
    remove_column :films, :data_premiery
  end

  def self.down
    add_column :films, :data_premiery, :string
  end
end
