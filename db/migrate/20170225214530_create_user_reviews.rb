class CreateUserReviews < ActiveRecord::Migration
  def change
    create_table :user_reviews do |t|

      t.text :review
      t.string :rating
      t.string :name
      t.integer :tvshow_id

      t.timestamps
    end

    add_index :user_reviews, :tvshow_id
  end
end
