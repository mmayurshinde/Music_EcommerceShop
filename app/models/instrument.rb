class Instrument < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
	attribute :colour, :string
  mount_uploader :image, ImageUploader
  serialize :image, JSON 
  has_many :line_items
  belongs_to :user, optional: true

  validates :title, :brand, :price, :model, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
  validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed" }
  validates :price, numericality: { only_integer: true }, length: { maximum: 7 }
  	
  BRAND = %w{ Fender Gibson Epiphone ESP Martin Dean Taylor Jackson PRS  Ibanez Charvel Washburn }
  FINISH = %w{ Black White Navy Blue Red Clear Satin Yellow Seafoam }
  CONDITION = %w{ New Excellent Mint Used Fair Poor }
  OLD = %W{1 MONTH OLD ,3 MONTHS, 6 MONTHS OLD,1 YEAR OLD }

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base,"Line items Present")
      throw :abort
    end
  end

end
