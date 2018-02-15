class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.datetime :opened

      t.timestamps
    end
  end
end
