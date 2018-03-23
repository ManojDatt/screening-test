class CreateExamLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :exam_logs do |t|
      t.references :employee , foreign_key: true
      t.integer :department_id
      t.string :result
      t.integer :total_question
      t.integer :correct

      t.timestamps
    end
  end
end
