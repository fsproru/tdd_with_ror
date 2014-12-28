class AddImageToDogs < ActiveRecord::Migration
  def change
    change_table :dogs do |table|
      table.column :image, :string
    end
  end
end
