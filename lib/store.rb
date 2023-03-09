class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_carry_one_apparel

  def must_carry_one_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "or womens apparel must have at least one apparel")
    end
  end
end
