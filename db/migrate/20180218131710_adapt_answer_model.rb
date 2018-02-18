class AdaptAnswerModel < ActiveRecord::Migration[5.1]
  def change
    remove_column :applications, :answers, :jsonb
  end
end
