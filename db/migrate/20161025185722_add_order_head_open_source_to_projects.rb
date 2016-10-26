class AddOrderHeadOpenSourceToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :order, :integer
    add_column :projects, :head, :boolean
    add_column :projects, :open_source, :boolean
  end
end
