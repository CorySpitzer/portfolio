class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body

      # see
      # guides.rubyonrails.org/association_basics.html#polymorphic-associations
      t.integer :things_with_comments_id
      t.string :things_with_comments_type
      # Which simplifies to:
      # t.references :things_with_comments, polymorphic: true, index: true

      t.timestamps
    end
  end
end
