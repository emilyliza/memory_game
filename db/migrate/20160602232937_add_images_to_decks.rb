class AddImagesToDecks < ActiveRecord::Migration
  def change
  	add_column :decks, :images, :string, array: true, default: [] # add images column as array
  end
end
