class Request < ApplicationRecord
  belongs_to :user
  belongs_to :shift
  has_one :chat
  has_one :offer
end
