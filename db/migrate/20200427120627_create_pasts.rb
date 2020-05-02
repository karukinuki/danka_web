class CreatePasts < ActiveRecord::Migration[6.0]
  def change
    create_table :pasts do |t|
      t.integer :danka_id
      t.boolean :check
      t.string :subname
      t.string :name
      t.string :subpenname
      t.string :penname
      t.date :deathday
      t.integer :deathage
      t.date :birthday
      t.string :funeral
      t.string :relation
      t.string :mark1
      t.text :mark2

      t.timestamps
    end
  end
end
