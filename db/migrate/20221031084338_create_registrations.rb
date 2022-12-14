class CreateRegistrations < ActiveRecord::Migration[7.0]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.references :experience, null: false, foreign_key: true

      t.timestamps
    end
  end
end
