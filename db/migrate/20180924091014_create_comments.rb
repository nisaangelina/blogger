class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.references :article, index: true

      t.timestamps
    end
    add_foreign_key :comments, :articles
  end
end
