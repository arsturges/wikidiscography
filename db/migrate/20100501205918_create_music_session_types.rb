class CreateMusicSessionTypes < ActiveRecord::Migration
  def self.up
    create_table :music_session_types do |t|
      t.string :music_session_type

      t.timestamps
    end
  end

  def self.down
    drop_table :music_session_types
  end
end
