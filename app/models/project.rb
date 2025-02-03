class Project < ApplicationRecord
  STATUSES = %w[backlog active complete]
  has_many :comments
end
