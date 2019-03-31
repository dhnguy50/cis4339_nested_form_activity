module ApplicationHelper
  #version 1
  # def link_to_add_fields(name, f, association)
  #   new_object = f.object.send(association).klass.new
  #   id = new_object.object_id
  #   fields = f.fields_for(association, new_object, child_index: id) do |builder|
  #     render(association.to_s.singularize + "_fields", form: builder)
  #   end
  #   link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  # end

  #version 2
  def link_to_add_fields(name, form, association)
    new_object = form.object.send(association).klass.new
    id = new_object.object_id
    fields = form.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", form: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: escape_html_attribute(fields)})
  end

  def escape_html_attribute(str)
    Rack::Utils.escape_html(str).gsub("\n", '&#xA;').html_safe
  end


end
