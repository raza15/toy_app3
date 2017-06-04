class CreatePersonalBackgrounds < ActiveRecord::Migration[5.0]
  def change
    create_table :personal_backgrounds do |t|
      t.integer :user_id
      t.datetime :date_of_birth
      t.integer :age
      t.string :gender
      t.string :email
      t.string :phone
      t.string :home_addess
      t.string :current_employer
      t.string :current_job_title

      t.timestamps
    end
  end
end
