class AddColumnStatus < ActiveRecord::Migration[5.2]
  def change
    add_column :api_keys, :status, :string
  end
end
