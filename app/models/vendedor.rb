class Vendedor < ActiveRecord::Base
  belongs_to :revenda
  belongs_to :estado
  belongs_to :municipio
end
