class CreateResumeActivities < ActiveRecord::Migration
  def change
    create_table :resume_activities do |t|
      t.integer :resume_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
