class CreateFilms < ActiveRecord::Migration
  def self.up
    create_table :films do |t|
      t.string :tytul
      t.string :rezyseria
      t.string :scenariusz
      t.text :obsada
      t.string :data_premiery
      t.string :kraj_produkcji
      t.text :opis_filmu

      t.timestamps
    end
  end

  def self.down
    drop_table :films
  end
end
