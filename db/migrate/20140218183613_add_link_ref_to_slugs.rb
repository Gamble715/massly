class AddLinkRefToSlugs < ActiveRecord::Migration
  def change
    add_reference :slugs, :link, index: true
  end
end
