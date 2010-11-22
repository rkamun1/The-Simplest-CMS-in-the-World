class AddDimensionsToComponent < ActiveRecord::Migration
  def self.up
    add_column :components, :width, :integer
    add_column :components, :height, :integer
    add_column :components, :top, :integer
    add_column :components, :left, :integer
  end

  def self.down
    remove_column :components, :left
    remove_column :components, :top
    remove_column :components, :height
    remove_column :components, :width
  end
end
