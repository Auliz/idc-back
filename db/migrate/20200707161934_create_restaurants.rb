class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :rating
      t.string :price
      t.string :string
      t.string :display_phone
      t.string :review_count
      t.string :url
      t.boolean :pickup
      t.boolean :delivery
      t.float :distance
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :city
      t.string :zip_code
      t.string :state

      t.timestamps
    end
  end
end
