class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.text :url
      t.integer :month
      t.text :days
      t.text :comments
      t.text :gyms

      t.timestamps
    end
  end
end
