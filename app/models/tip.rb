class Tip < ApplicationRecord
  belongs_to :user

  scope :amount_desc, -> { order(amount: :desc) }
  scope :amount_asc, -> { order(amount: :asc) }

  def number_to_currency_zar
  	number_to_currency(number, :unit => "R", :separator => ",", :delimiter => ".")
  end
  
end