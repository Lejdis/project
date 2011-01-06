class RemoveDataFromComments < ActiveRecord::Migration
  def self.up
    remove_column :comments, :data
  end

  def self.down
    add_column :comments, :data, :date
  end
end
