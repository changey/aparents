class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :image
      t.decimal :price, :scale => 2
      t.integer :bought, :default=>0
      t.integer :status
      t.float :longitude
      t.float :latitude
      t.string :owner_id
      t.string :gmaps
      t.string :address
      
      t.timestamps
    end
  end
end
