class Link < ActiveRecord::Base
  belongs_to :slug, :foreign_key => 'slug_id'


end
