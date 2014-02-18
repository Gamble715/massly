class CreateSlugs < ActiveRecord::Migration
  def change
    create_table :slugs do |t|
      t.string :word

      t.timestamps
    end
  end
end
