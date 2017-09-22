class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.integer :value
      t.references :user_id, foreign_key: true
      t.references :quiz_id, foreign_key: true

      t.timestamps
    end
    
    add_index :scores, [:quiz_id, :created_at]
    
  end
end
