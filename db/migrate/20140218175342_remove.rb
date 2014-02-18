class Remove < ActiveRecord::Migration
  def up
    remove_column :links, :slug
  end

  def down
    add_column :links, :slug, :string
  end
end
