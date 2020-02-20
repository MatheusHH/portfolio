class AdditionalInformation < ApplicationRecord
  belongs_to :portfolio
  belongs_to :block

  validates :title, :description, presence: true
  validates :block_id, uniqueness: true
end
