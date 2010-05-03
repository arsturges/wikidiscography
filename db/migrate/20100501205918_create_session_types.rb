class CreateSessionTypes < ActiveRecord::Migration
  def self.up
    create_table :session_types do |t|
      t.string :session_type

      t.timestamps
    end
  end

  def self.down
    drop_table :session_types
  end
end
