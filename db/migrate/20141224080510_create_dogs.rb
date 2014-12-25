class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.column :name, :string
    end
  end
end
