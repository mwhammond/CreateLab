class User < ActiveRecord::Base
  ROLES = %w(Undergraduate Postgraduate Staff Alumni Other)
  validates_presence_of :first_name, :last_name, :role
  validates_inclusion_of :role, in: User::ROLES
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
end
