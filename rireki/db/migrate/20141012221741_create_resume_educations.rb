class CreateResumeEducations < ActiveRecord::Migration
  def change
    create_table :resume_educations do |t|
      t.integer :resume_id
      t.integer :education_id

      t.timestamps
    end
  end
end
