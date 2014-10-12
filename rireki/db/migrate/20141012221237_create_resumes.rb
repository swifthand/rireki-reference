class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string  :name
      t.text    :objective
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
