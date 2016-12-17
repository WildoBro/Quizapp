class CreateTvshows < ActiveRecord::Migration
  def change
    create_table :tvshows do |t|

      t.string :name
      t.text :description
      t.integer :star_rating

      t.timestamps
    end
  end
end
