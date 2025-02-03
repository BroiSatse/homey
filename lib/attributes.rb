module Attributes
  extend ActiveSupport::Concern

  included do
    include ActiveModel::Attributes
    include ActiveModel::AttributeAssignment
  end

  def initialize(attrs = {}, **kwarts)
    assign_attributes(attrs.merge(kwarts))
    super()
  end
end
