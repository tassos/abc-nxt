class UseRandomIDsForUser < ActiveRecord::Migration[5.1]
  def change
    create_random_id_functions
    random_str_id :users
    random_str_id :applications
    random_str_id :events
    random_str_id :questions
    random_str_id :answers
    change_column :applications, :user_id, :string
    change_column :applications, :event_id, :string
    change_column :answers, :question_id, :string
    change_column :answers, :application_id, :string
    change_column :questions, :event_id, :string
  end
end
