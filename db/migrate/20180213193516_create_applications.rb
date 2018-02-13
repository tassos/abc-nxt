class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.integer :event_id
      t.integer :user_id
      t.jsonb :answers
      t.integer :status

      t.timestamps
    end
  end
end
