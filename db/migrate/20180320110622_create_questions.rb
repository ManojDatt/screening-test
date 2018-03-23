class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :department, foreign_key: true
      t.string :content
      t.string :diagram
      t.boolean :has_diagram

      t.timestamps
    end
  end
end
