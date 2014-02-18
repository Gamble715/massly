class AddSlugRefToLinks < ActiveRecord::Migration
  def change
    add_reference :links, :slug, index: true
  end
end
