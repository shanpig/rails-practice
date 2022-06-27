class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    drop_table :groups
    create_table :groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
