class Movie < ActiveRecord::Base
  attr_accessible :language, :length, :title, :year
end
