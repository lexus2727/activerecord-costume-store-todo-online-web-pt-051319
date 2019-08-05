# Create a class and inherit from ActiveRecord::Migration

# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and 
# value types according to the spec

class CreateCostumes < ActiveRecord::Migration[5.1]
  
    # def self.create_table
    #   sql = <<-SQL
    #   CREATE TABLE IF NOT EXISTS students (
    #   id INTEGER PRIMARY KEY,
    #   name TEXT,
    #   price FLOAT,
    #   size TEXT,
    #   image_url TEXT,
    #   timestamp DATETIME,
    #   timestamp DATETIME
    #   )
    #   SQL
    #   ActiveRecord::Base.connection.execute(sql)
    # end
      
    
    def change
      create_table :costumes do |t|
        t.string :name
        t.float :price
        t.string :size
        t.string :image_url
        t.timestamp :created_at
        t.timestamp :updated_at
        
       end
      end 
    end  
      
      
      
