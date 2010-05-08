class CreateMedia < ActiveRecord::Migration
  def self.up
    create_table :media do |t|
      t.string :medium
      t.integer :sort

      t.timestamps
    end
  end

  def self.down
    drop_table :media
  end
end
