class RemoveImageFileNameFromExperiences < ActiveRecord::Migration[7.0]
  def change
    remove_column :experiences, :image_file_name, :string
  end
end
