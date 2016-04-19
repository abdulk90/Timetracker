class AddDescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :desctription, :text
  end
end
