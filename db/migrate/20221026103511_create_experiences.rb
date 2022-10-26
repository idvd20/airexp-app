class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :location
      t.decimal :price

      t.timestamps
    end
  end
end
