class AddTimestampsToDogs < ActiveRecord::Migration
  def change
    change_table :dogs do |t|
      t.timestamps
    end
  end
end
