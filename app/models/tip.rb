class Tip < ApplicationRecord
  belongs_to :user

  scope :amount_desc, -> { order(amount: :desc) }
  scope :amount_asc, -> { order(amount: :asc) }

end