class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.references :film
      t.string :author
      t.text :body
      t.date :data

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
