class CreateBooks < ActiveRecord::Migration[7.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :publication_date
      t.integer :rating, default: 0
      t.integer :status

      t.timestamps
    end
  end
end
