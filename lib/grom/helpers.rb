require 'grom'

module Grom
  module Helpers

    def url_builder(owner_object, associated_class_name, optional=nil)
      id = owner_object.id
      owner_class_name_plural = ActiveSupport::Inflector.pluralize(owner_object.class.name.downcase)
      associated_class_name_plural = ActiveSupport::Inflector.pluralize(associated_class_name.downcase)
      endpoint = "#{API_ENDPOINT}/#{owner_class_name_plural}/#{id}/#{associated_class_name_plural}"
      endpoint += optional.nil? ? '.ttl' : "/#{optional}.ttl"
    end
  end
end