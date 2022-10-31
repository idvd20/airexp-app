class AddStarsToRegistrations < ActiveRecord::Migration[7.0]
  def change
    add_column :registrations, :stars, :integer
  end
end
