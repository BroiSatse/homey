class ProjectEvent < ApplicationRecord
  belongs_to :project
  belongs_to :comment, optional: true # this ideally be a many-to-many polymorphic association
  belongs_to :user
end
