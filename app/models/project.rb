class Project < ApplicationRecord
  STATUSES = %w[backlog active complete]
  has_many :comments
  has_many :events, class_name: 'ProjectEvent'
end
