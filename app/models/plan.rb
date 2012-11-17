class Plan < ActiveRecord::Base
  attr_accessible :comments, :days, :gyms, :month, :url
end
