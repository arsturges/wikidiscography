class CreateReleases < ActiveRecord::Migration
  def self.up
    create_table :releases do |t|
      t.string :title
      t.string :sort_title
      t.integer :label_id
      t.string :catalogue_number
      t.date :issue_date
      t.integer :medium_id
      t.string :ASIN
      t.integer :volumes

      t.timestamps
    end
  end

  def self.down
    drop_table :releases
  end
end
