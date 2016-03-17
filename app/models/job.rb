class Job < ActiveRecord::Base
  validates :title, uniqueness: true
end
