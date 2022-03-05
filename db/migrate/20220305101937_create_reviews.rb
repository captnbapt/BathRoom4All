class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :bathroomless_review
      t.text :owner_review
      t.integer :bathroomless_raiting
      t.integer :owner_rating

      t.timestamps
    end
  end
end
