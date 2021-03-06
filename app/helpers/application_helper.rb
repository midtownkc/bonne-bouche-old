# frozen_string_literal: true

# All Helpers come from here.
module ApplicationHelper
  def link_to_add_fields(name, form, association)
    new_object = form.object.send(association).klass.new
    id = new_object.object_id
    fields = form.fields_for(association, new_object, child_index: id) do |builder|
      render("#{association.to_s.singularize}_fields", f: builder)
    end
    link_to(name, 'javascript:void(0)', class: 'add_fields btn btn-success btn-sm admin-action-button', data:
      { id: id, fields: fields.gsub('\n', '') })
  end
end
