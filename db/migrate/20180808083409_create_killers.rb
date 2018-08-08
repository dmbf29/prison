class CreateKillers < ActiveRecord::Migration[5.2]
  def change
    create_table :killers do |t|
      t.string :name
      t.string :image_url
      t.references :jail, foreign_key: true

      t.timestamps
    end
  end
end
