class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  ROLES = %w(admin normal)

  has_one :premium_membership

  attribute :role, :string, default: 'normal'

  validates :role, presence: true, inclusion: {in: ROLES}

  def premium_member?
    self.premium_membership.present?
  end

  def admin?
    self.role == 'admin'
  end

  def normal?
    self.role == 'normal'
  end
end
