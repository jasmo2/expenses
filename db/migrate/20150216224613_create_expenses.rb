class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.text :concept
      t.float :amount
      t.integer :category_id
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :expenses, :categories
  end
end
