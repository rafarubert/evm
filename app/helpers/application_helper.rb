module ApplicationHelper
  
  def nested_attributes_for(form_builder, *args)
    content_for :javascript do
      content = ""
      args.each do |association|
        content << "\nvar #{association}_template='#{generate_template(form_builder, association.to_sym)}';"
      end
      content
    end
  end

  def generate_html(form_builder, method, options = {})
    options[:object] ||= form_builder.object.class.reflect_on_association(method).klass.new
    options[:partial] ||= method.to_s.singularize
    options[:form_builder_local] ||= :f

    form_builder.fields_for(method, options[:object], :child_index => 'NEW_RECORD') do |f|
      render(:partial => options[:partial], :locals => { options[:form_builder_local] => f })
    end
  end

  def generate_template(form_builder, method, options = {})
    escape_javascript generate_html(form_builder, method, options = {})
  end
end
