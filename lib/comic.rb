class Comic < ActiveRecord::Base
  validates :name, presence: true
end
