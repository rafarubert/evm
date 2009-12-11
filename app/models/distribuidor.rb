class Distribuidor < ActiveRecord::Base
  belongs_to :municipio
  belongs_to :agente
end
