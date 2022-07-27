class ChangeColumnFromDefult < ActiveRecord::Migration[5.2]
  def change
    change_column :api_keys, :api_key, :string, :default => SecureRandom.base64.tr('+/=', 'Qrt')
    change_column :api_keys, :status, :string
  end
end
