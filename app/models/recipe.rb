# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :ingredients, dependent: :destroy

  accepts_nested_attributes_for :ingredients
end
