class ChangeTotalDatatypeToDecimal < ActiveRecord::Migration[5.2]
  def self.up
    change_column :orders, :total, :decimal
  end
  def self.down
    change_column :orders, :total, :float
  end
end
