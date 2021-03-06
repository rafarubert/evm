class Campanha < ActiveRecord::Base
  has_many :vendedores
  has_many :campanha_vendedores
  has_many :campanha_premios
  has_many :campanha_produtos
  has_many :estados
  validates_presence_of :titulo, :data_inicio, :data_termino, :data_troca, :regulamento
  
  before_save :trata_cpf

  def trata_cpf
   self.titulo = self.titulo.gsub("/","")
  end
  accepts_nested_attributes_for :campanha_vendedores, :allow_destroy => true
  accepts_nested_attributes_for :campanha_produtos, :allow_destroy => true
  accepts_nested_attributes_for :campanha_premios, :allow_destroy => true
  
end