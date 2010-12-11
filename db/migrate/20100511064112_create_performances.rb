class CreatePerformances < ActiveRecord::Migration
  def self.up
    create_table :performances do |t|
      t.integer :music_session_id
      t.integer :song_id
      t.integer :performance_type_id
      t.time :duration
      t.boolean :medley
      t.string :matrix
      t.integer :medley_id

      t.timestamps
    end
  end

  def self.down
    drop_table :performances
  end
end
