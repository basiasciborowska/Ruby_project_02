class ChangeTables < ActiveRecord::Migration
  def change
    add_foreign_key :tickets, :users
  end
end
