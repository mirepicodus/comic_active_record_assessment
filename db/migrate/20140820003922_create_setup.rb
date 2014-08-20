class CreateSetup < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :name
    end

    create_table :charcters do |t|
      t.string :name
      t.belongs_to :powers
    end

    create_table :characters_comics do |t|
      t.belongs_to :characters
      t.belongs_to :comics
    end

    create_table :powers do |t|
      t.string :name
    end
  end
end
