class Loan < ApplicationRecord
	validates :giver,:sum,:term,:interest, presence: true
	validates :sum, numericality: {greater_than: 0}
	validates :term, numericality: {greater_than: 0}
	validates :interest, numericality: {greater_than_or_equal: 0}
end
