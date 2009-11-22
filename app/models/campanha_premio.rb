class CampanhaPremio < ActiveRecord::Base
  belongs_to :campanha
  belongs_to :premio
end
