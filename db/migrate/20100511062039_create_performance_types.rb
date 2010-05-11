class CreatePerformanceTypes < ActiveRecord::Migration
  def self.up
    create_table :performance_types do |t|
      t.string :performance_type

      t.timestamps
    end
  end

  def self.down
    drop_table :performance_types
  end
end
