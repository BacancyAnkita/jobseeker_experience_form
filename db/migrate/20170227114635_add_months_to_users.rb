class AddMonthsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :months, :string
  end
end
