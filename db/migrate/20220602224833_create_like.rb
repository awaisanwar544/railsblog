class CreateLike < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.date :CreatedAt
      t.date :updatedAt
      t.integer :AuthorId
      t.integer :PostId

      t.timestamps
    end
  end
end
