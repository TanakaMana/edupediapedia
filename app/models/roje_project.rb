class RojeProject < ApplicationRecord
  belongs_to :user

  enum project_name: { vp: 0, kouko: 1, tsubomi: 2, gogatsusai: 3, vary: 4, comp: 5, kanfo: 6, management: 7, pr: 8, accout: 9, leader: 10, nothing: 11 }
end
