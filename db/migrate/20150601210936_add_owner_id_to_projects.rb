class AddOwnerIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :owner_id, :int
  end
end
