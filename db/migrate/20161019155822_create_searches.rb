class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :outbound
      t.integer :flight_duration
      t.date :departure
      t.string :return

      t.timestamps
    end
  end
end
