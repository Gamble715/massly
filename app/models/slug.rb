class Slug < ActiveRecord::Base
  validates :word, uniqueness: true

  has_one :link, :foreign_key => 'slug_id'
end
