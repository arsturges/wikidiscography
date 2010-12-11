class CreateMusicSessions < ActiveRecord::Migration
  def self.up
    create_table :music_sessions do |t|
      t.date :music_session_date
      t.boolean :circa
      t.string :text_date
      t.string :title
      t.integer :country_id
      t.integer :state_id
      t.integer :music_session_type_id
      t.string :venue
      t.timestamps
    end
  end

  def self.down
    drop_table :music_sessions
  end
end
