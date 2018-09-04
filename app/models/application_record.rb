class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :paginate, ->(limit, offset) { limit(limit).offset(limit * offset) }
end
