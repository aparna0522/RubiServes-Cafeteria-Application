class AddOrdeerToOrdeerItems < ActiveRecord::Migration[6.1]
  def change
    add_column :ordeer_items, :ordeer_id, :integer
  end
end
