class ChangeColumnFromDefult1 < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:api_keys, :api_key, nil)
  end
end
