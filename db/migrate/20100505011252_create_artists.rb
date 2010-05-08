class CreateArtists < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
      t.string :first
      t.string :last
      t.string :display_name
      t.integer :skill_id
      t.date :birth
      t.date :death
      t.string :birth_place
      t.string :death_place

      t.timestamps
    end
  end

  def self.down
    drop_table :artists
  end
end
