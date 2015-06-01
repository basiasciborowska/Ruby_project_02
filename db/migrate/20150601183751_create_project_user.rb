class CreateProjectUser < ActiveRecord::Migration
  def change
    create_table :project_users do |t|
      t.integer :member_project_id
      t.integer :member_id
    end
  end
end
