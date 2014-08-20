class UpdateCharactersComics < ActiveRecord::Migration
  def change
    rename_column :characters_comics, :characters_id, :character_id
    rename_column :characters_comics, :comics_id, :comic_id
    rename_column :charcters, :powers_id, :power_id
    rename_table :charcters, :characters
  end
end
