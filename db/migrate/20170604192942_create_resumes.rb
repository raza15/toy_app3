class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.integer :user_id
      t.string :attachment

      t.timestamps
    end
  end
end
