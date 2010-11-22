class CreateCmspages < ActiveRecord::Migration
  def self.up
    create_table :cmspages do |t|
      t.string :title
      t.timestamps
    end
  end

  def self.down
    drop_table :cmspages
  end
end
