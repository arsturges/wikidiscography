class CreateSongForms < ActiveRecord::Migration
  def self.up
    create_table :song_forms do |t|
      t.string :song_form

      t.timestamps
    end
  end

  def self.down
    drop_table :song_forms
  end
end
