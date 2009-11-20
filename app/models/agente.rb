class Agente < ActiveRecord::Base
  validates_presence_of :nome, :message => "Preencha o campo corretamente!"
end
