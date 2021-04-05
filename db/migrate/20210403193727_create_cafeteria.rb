class CreateCafeteria < ActiveRecord::Migration[6.1]
  def change
    create_table :cafeteria do |t|

      t.timestamps
    end
  end
end
