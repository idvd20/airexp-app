class AddSlugToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :slug, :string
  end
end
