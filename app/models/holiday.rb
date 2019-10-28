# frozen_string_literal: true

class Holiday < ApplicationRecord
  belongs_to :user
  has_one_attached :pictureUrl
end
