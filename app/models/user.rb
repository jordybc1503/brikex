class User < ApplicationRecord

  def full_name
    "#{first_name} #{last_name} #{second_last_name}"
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
