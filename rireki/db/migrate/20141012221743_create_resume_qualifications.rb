class CreateResumeQualifications < ActiveRecord::Migration
  def change
    create_table :resume_qualifications do |t|
      t.integer :resume_id
      t.integer :qualification_id

      t.timestamps
    end
  end
end
