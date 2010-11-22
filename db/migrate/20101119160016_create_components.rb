class CreateComponents < ActiveRecord::Migration
  def self.up
    create_table :components do |t|
      t.string :title
      t.text :content
      t.integer :cmspage_id
      t.integer :position
      t.timestamps
    end
  end

  def self.down
    drop_table :components
  end
end
