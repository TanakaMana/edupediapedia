class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :project_users, dependent: :delete_all
  has_many :projects, through: :project_users

  # accepts_nested_attributes_for :edu_teams, reject_if: :reject_team_name
  # accepts_nested_attributes_for :roje_projects, reject_if: :reject_project_name

  # def reject_team_name(attributed)
  #   attributed['team_name'].blank?
  # end

  # def reject_project_name(attributed)
  #   attributed['project_name'].blank?
  # end

  enum year: { one: 1, two: 2, three: 3, four: 4, five: 5, graduate_first: 6, graduate_second: 7, society: 8, teacher: 9, other_year: 10 }
  enum location: { kanto: 0, kansai: 1, kyushu: 2 }
  enum team_main: { writer: 0, plan: 1, qm: 2, bc: 3, hr: 4, account: 5, system: 6 }
  enum position: { member: 0, leader: 1, pl: 2 }
  enum roje: { nothing: 0, vp: 1, kouko: 2, tsubomi: 3, gogatsusai: 4, vary: 5, comp: 6, kanfo: 7, management: 8, pr: 9, accout: 10, other: 11 }
end
