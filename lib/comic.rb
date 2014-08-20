class Comic < ActiveRecord::Base
  validates :name, presence: true
  before_save :normalize_name
  has_and_belongs_to_many :characters

private
  def normalize_name
    self.name = self.name.downcase.titleize
  end

end
