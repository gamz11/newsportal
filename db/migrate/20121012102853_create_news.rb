class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :category
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
