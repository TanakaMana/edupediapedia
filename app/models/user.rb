class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has_many :edu_teams
  # has_many :roje_projects

  # accepts_nested_attributes_for :edu_teams, reject_if: :reject_team_name
  # accepts_nested_attributes_for :roje_projects, reject_if: :reject_project_name

  # def reject_team_name(attributed)
  #   attributed['team_name'].blank?
  # end

  # def reject_project_name(attributed)
  #   attributed['project_name'].blank?
  # end

  enum location: { kanto: 0, kansai: 1, kyushu: 2 }
  enum position: { member: 0, leader: 1, pl: 2 }
end
