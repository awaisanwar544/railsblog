class CreatePost < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :Title
      t.string :Text
      t.date :UpdatedAt
      t.date :CreatedAt
      t.integer :LikesCounter
      t.integer :AuthorId

      t.timestamps
    end
  end
end
