class CampanhaVendedor < ActiveRecord::Base
  belongs_to :campanha
  belongs_to :vendedor
  belongs_to :estado
end
