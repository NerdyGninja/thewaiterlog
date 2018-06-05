class CreateTips < ActiveRecord::Migration[5.2]
  def change
    create_table :tips do |t|
      t.references :user, foreign_key: true
      t.date :date
      t.integer :hours
      t.decimal :amount
      t.text :comment

      t.timestamps
    end
  end
end
