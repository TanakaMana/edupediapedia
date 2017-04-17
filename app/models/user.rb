class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum location: { kanto: 0, kansai: 1, kyushu: 2 }
  enum position: { member: 0, leader: 1, pl: 2 }
end
