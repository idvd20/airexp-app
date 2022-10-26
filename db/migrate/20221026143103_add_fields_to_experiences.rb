class AddFieldsToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :starts_at, :datetime
    add_column :experiences, :description, :text
  end
end
