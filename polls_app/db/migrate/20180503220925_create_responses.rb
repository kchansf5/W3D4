class CreateResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :responses do |t|
      t.integer :user_key, null:false
      t.integer :question_key
      t.integer :answer_key
      t.timestamps
    end
    
  end
end
