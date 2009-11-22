class Vendedor < ActiveRecord::Base
  belongs_to :revenda
  belongs_to :estado
  belongs_to :municipio
  belongs_to :campanha
  has_many :camapanha_vendedores
end
