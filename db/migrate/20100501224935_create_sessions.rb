class CreateSessions < ActiveRecord::Migration
  def self.up
    create_table :sessions do |t|
      t.date :session_date
      t.boolean :circa
      t.string :text_date
      t.string :title
      t.integer :country_id
      t.integer :state_id
      t.integer :session_type_id
      t.string :venue
      t.timestamps
    end
  end

  def self.down
    drop_table :sessions
  end
end
