class Produto < ActiveRecord::Base
  has_many :camapanha_produtos
end
