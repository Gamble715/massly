class Slug < ActiveRecord::Base
  validates :word, uniqueness: true

  belongs_to :link
end
