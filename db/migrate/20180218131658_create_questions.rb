class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.references :event
      t.text :name
      t.integer :order
      t.integer :kind

      t.timestamps
    end
  end
end
