class RemoveIndexFromEmployees < ActiveRecord::Migration
  def change
    remove_column :employees, :index, :string
  end
end
