class CreateEngineers < ActiveRecord::Migration[7.0]
  def change
    create_table :engineers do |t|
      t.string :name
      t.integer :age
      t.string :position

      t.timestamps
    end
  end
end
