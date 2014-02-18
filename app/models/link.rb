class Link < ActiveRecord::Base
  has_one :slug


  def slugify
    slug = ["agilispeed", "awesomeness", "freesponsibility", "teamswork", "transopency"].sample
  end
end
