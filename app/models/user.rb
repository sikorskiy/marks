class User < ApplicationRecord
  validates_presence_of :name
  validates :password, length: { minimum: 5 }
  belongs_to :user_role
  has_many :marks

  before_validation :set_defaults

  def set_defaults
    self.user_role ||= UserRole.find_by_name('user')
  end

end
