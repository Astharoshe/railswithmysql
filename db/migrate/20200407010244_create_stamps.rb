class CreateStamps < ActiveRecord::Migration[6.0]
  def change
    create_table :stamps do |t|
      t.string :num
      t.string :field
      t.string :stamptype
      t.string :value
      t.string :name
      t.text :url

      t.timestamps
    end
  end
end
