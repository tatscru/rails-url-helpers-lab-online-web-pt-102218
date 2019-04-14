class ActiveColumnStudents < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, default: rue
  end
end 