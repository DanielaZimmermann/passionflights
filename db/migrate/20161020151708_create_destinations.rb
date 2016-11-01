class CreateDestinations < ActiveRecord::Migration[5.0]
  def change
    create_table :destinations do |t|
      t.string :iata_code
      t.string :city
      t.string :continent
      t.string :area
      t.string :season_months
    end
  end
end
