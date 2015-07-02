class CreateInitialTables < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :skills do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    # with help from
    # guides.rubyonrails.org/association_basics.html#the-has-and-belongs-to-many-association
    create_table :projects_skills, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :skill, index: true
    end
  end
end
