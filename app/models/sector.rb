class Sector < ApplicationRecord
  has_many :jobs, through: :sector_joiners
  has_many :sign_ups, through: :sector_joiners
end
