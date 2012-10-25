class News < ActiveRecord::Base
  attr_accessible :category, :title, :description, :image_url
  validates :category, :title, :description, :image_url, :presence=>{message: ': Please fill in all fields'}
  validates :title, :uniqueness => {message: ' : must be uniqueness'}
  validates :image_url, :allow_blank=> true, format: {
      with: %r{\.(gif|jpg|png)$}i,
      message: ' : must be a URL with gif, jpg or png image'
  }
end
