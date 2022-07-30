class Task < ApplicationRecord
  belongs_to :blog, optional: true
end
