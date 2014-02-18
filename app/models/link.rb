class Link < ActiveRecord::Base
  validates :slug, uniqueness: true



  def slugify
    slug = ["agilispeed", "awesomeness", "freesponsibility", "teamswork", "transopency"].sample
  end
end
