class Character < ActiveRecord::Base
  validates :name, presence: true
  before_save :normalize_name
  has_and_belongs_to_many :comics
  belongs_to :power
  scope :list_alpha, -> { order('name ASC') }

private
  def normalize_name
    self.name = self.name.downcase.titleize
  end

end
