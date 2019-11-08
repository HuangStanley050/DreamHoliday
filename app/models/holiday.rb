# frozen_string_literal: true

class Holiday < ApplicationRecord
  validates :title, :description, :pictureUrl, :price, presence: true
  validates :price, numericality: { only_decimal: true, greater_than: 0 }
  belongs_to :user
  has_many :orders
  has_one_attached :pictureUrl
end
