class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end

    create_table :recipes do |t|
      t.string :name
      t.text :content
      t.integer :user_id
      t.timestamps
    end

    create_table :ingredients do |t|
      t.string :name
      t.timestamps
    end

    create_table :tags do |t|
      t.string :name
      t.timestamps
    end

    create_table :reviews do |t|
      t.string :title
      t.date :date
      t.text :content
      t.integer :stars
      t.integer :user_id
      t.integer :recipe_id
      t.timestamps
    end

    create_table :portions do |t|
      t.integer :ingredient_id
      t.integer :quantity
      t.string :unit_of_measurement
      t.integer :recipe_id
      t.timestamps
    end
  end
end
