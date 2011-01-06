class AddTytulToFilms < ActiveRecord::Migration
  def self.up
    add_column :films, :tytul_orginalny, :string
  end

  def self.down
    remove_column :films, :tytul_orginalny
  end
end
