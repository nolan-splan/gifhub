class AddUserToGif < ActiveRecord::Migration[5.2]
  def change
    add_reference :gifs, :user, foreign_key: true
  end
end
