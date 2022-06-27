class CreateEventGroupships < ActiveRecord::Migration[7.0]
  def change
    drop_table :event_groupships
    create_table :event_groupships do |t|
      t.integer :event_id
      t.integer :group_id

      t.timestamps
    end
  end
end
