class AddCreatedByUserToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :created_by_user, :int
  end
end
