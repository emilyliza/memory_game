class RemoveImageFromDecks < ActiveRecord::Migration
  def change
  	remove_column :decks, :image, :json
  end
end
