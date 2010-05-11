class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string :title
      t.string :sort_title
      t.integer :song_form_id
      t.text :description
      t.integer :contrafact_id

      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end
