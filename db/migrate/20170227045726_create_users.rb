class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :designation
      t.string :company
      t.string :working_since
      t.string :location
      t.string :notice

      t.timestamps
    end
  end
end
