
ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
  inflect.irregular 'vendedor', 'vendedores'
  inflect.irregular 'relacao', 'relacoes'
  inflect.irregular 'campanha_vendedor', 'campanha_vendedores'
#   inflect.uncountable %w( fish sheep )
end
