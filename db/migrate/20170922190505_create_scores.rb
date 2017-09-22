class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :value
      t.references :quiz
      t.references :user

      t.timestamps
    end
    add_index :scores, [:quiz_id, :created_at]
  end
end
