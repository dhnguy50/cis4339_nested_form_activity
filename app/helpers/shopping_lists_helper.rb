module ShoppingListsHelper
  # def link_to_add_fields(name, form, association)
  #   new_object = form.object.class.reflect_on_association(association).klass.new
  #   id = new_object.object_id
  #   fields = form.fields_for(association, new_object, child_index: id) do |builder|
  #     render(association.to_s.singularize + "_fields", form: builder)
  #   end
  #   link_to(name, '#', class: "add_fields", data: {id: id, fields: escape_html_attribute(fields)})
  # end
  #
  # def escape_html_attribute(str)
  #   Rack::Utils.escape_html(str).gsub("\n", '&#xA;').html_safe
  # end
end
