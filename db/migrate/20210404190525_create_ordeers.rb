class CreateOrdeers < ActiveRecord::Migration[6.1]
  def change
    create_table :ordeers do |t|
      t.decimal :subtotal
      t.decimal :total
      t.string :date

      t.timestamps
    end
  end
end
