class CreateDankas < ActiveRecord::Migration[6.0]
  def change
    create_table :dankas do |t|
      t.boolean :check
      t.string :subname
      t.string :name
      t.integer :postal
      t.string :addless
      t.string :addless2
      t.integer :tel
      t.string :email
      t.string :mark1
      t.text :mark2

      t.timestamps
    end
  end
end
