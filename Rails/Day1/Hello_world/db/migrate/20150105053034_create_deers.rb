class CreateDeers < ActiveRecord::Migration
  def change
    create_table :deers do |t|
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
