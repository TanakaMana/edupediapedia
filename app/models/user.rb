class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :edu_teams
  has_many :roje_projects

  enum location: { kanto: 0, kansai: 1, kyushu: 2 }
  enum position: { member: 0, leader: 1, pl: 2 }
end
