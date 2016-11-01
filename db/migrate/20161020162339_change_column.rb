class ChangeColumn < ActiveRecord::Migration[5.0]
  def change
  	change_column :searches, :return, :date
  end
end
