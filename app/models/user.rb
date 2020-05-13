# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :notes
  has_many :todos
end
