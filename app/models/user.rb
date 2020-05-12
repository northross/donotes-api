# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :note
  has_many :todo
end
