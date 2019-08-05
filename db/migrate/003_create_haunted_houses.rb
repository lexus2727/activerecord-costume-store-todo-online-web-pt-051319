class CreateHauntedHouses < ActiveRecord::Migration[5.1]
  sql = <<-SQL
    CREATE TABLE IF NOT EXISTS haunted_houses (
    name TEXT,
    location TEXT,
    theme TEXT,
    price INTEGER,
    family_friendly BOOLEAN,
    opening_date DATETIME,
    closing_date DATETIME,
    long_description TEXT)
    SQL
    ActiveRecord::Base.connection.execute(sql)
    end

    def change
      create_table :haunted_houses do |t|
        t.string :name
        t.string :location
        t.string :theme
        t.integer :price
        t.boolean :family_friendly
        t.datetime :opening_date
        t.datetime :closing_date
        t.string :long_description
       end
    end
  end
  