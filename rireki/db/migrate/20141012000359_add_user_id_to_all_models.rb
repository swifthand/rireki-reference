class AddUserIdToAllModels < ActiveRecord::Migration
  def change
    add_column :activities,     :user_id, :integer
    add_column :educations,     :user_id, :integer
    add_column :experiences,    :user_id, :integer
    add_column :qualifications, :user_id, :integer
  end
end
