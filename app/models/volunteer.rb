class Volunteer < ActiveRecord::Base
  has_secure_password
  has_many :commitments
  has_many :tasks, through: :commitments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  enum role: %w(default admin)
end
