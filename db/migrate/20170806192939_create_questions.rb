class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :title
      t.references :quiz, foreign_key: true

      t.timestamps
    end
    add_index :questions, [:quiz_id, :created_at]
  end
end
