class AddWhales < ActiveRecord::Migration[5.0]
  def change
    create_table :whales do |t|
      t.string :name
      t.string :weight

      t.timestamps
    end
  end
end
