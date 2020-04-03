# frozen_string_literal: true

class Post < ApplicationRecord
  validates :description, presence: true
end
