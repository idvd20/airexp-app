class AddImageAndCapacityToExperience < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :image_file_name, :string, default: "placeholder.jpeg"
    add_column :experiences, :capacity, :integer, default: 1 
  end
end