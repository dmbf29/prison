class CreateKillerCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :killer_categories do |t|
      t.references :killer, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
