class ChangeDataTypeForDeadline < ActiveRecord::Migration[5.1]
  def change
    change_column :items, :deadline, :string
  end
end
