class Recipe < ApplicationRecord
  has_many :ingredients
  accepts_nested_atributes_for :ingredients
end
