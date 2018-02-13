class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :lbg
      t.datetime :year_started
      t.datetime :year_ended
      t.string :diet

      t.timestamps
    end
  end
end
