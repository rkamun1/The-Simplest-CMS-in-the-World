class AddColumnsToComponents < ActiveRecord::Migration
  def self.up
    add_column :components, :type, :string
    add_column :components, :yes, :integer
    add_column :components, :no, :integer
    add_column :components, :total_votes, :integer
    add_column :components, :ip_address, :string
  end

  def self.down
    remove_column :components, :ip_address
    remove_column :components, :total_votes
    remove_column :components, :no
    remove_column :components, :yes
    remove_column :components, :type
  end
end
