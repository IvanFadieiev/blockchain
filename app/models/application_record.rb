# frozen_string_literal: true

# abstract class
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
