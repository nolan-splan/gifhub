class CreateGifs < ActiveRecord::Migration[5.2]
  def change
    create_table :gifs do |t|
      t.string :owner
      t.string :url
      t.string :name
      t.string :string
      t.string :description

      t.timestamps
    end
  end
end
