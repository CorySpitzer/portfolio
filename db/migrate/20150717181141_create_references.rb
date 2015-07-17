class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :referee
      t.text :referee_info
      t.text :body
      t.integer :user_id
    end
  end
end
