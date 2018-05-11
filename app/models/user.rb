class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :userType
  accepts_nested_attributes_for :userType

   # ensure user account is active
  def active_for_authentication?
    super && isActive
  end

  # provide a custom message for a inactive account
  def inactive_message
    isActive ? super : :inative_account
  end

end
