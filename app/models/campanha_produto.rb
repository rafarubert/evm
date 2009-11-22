class CampanhaProduto < ActiveRecord::Base
  belongs_to :campanha
  belongs_to :produto
end
