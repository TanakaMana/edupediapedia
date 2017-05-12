class Project < ApplicationRecord
  has_many :project_users
  has_many :users, through: :project_users

  enum status: { doing: 0, stagnation: 1, done: 2, planning: 3 }
end
