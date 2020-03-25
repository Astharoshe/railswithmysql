class CreatePostDbs < ActiveRecord::Migration[6.0]
  def change
    create_table :post_dbs do |t|
      t.string :user

      t.timestamps
    end
  end
end
