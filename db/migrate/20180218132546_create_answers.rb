class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :content
      t.references :question
      t.references :application
      t.timestamps
    end
  end
end
