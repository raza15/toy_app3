class CreateSiblingBackgrounds < ActiveRecord::Migration[5.0]
  def change
    create_table :sibling_backgrounds do |t|
      t.integer :user_id
      t.string :sibling_name
      t.integer :sibling_age
      t.string :sibling_marital_status
      t.string :sibling_residence

      t.timestamps
    end
  end
end
