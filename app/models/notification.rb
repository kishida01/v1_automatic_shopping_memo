class Notification < ApplicationRecord
    validates :sent_at, presence: true
    validates :read, inclusion: { in: [0, 1] }
end
