class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.text :manaCost
      t.integer :cmc
      t.text :colors
      t.text :type
      t.string :supertypes
      t.text :types
      t.text :subtypes
      t.string :rarity
      t.text :text_block
      t.text :flavor
      t.text :artist
      t.integer :number
      t.integer :power
      t.integer :toughness
      t.string :layout
      t.integer :multiverseid

      t.timestamps
    end
  end
end
