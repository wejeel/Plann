class Upload < ApplicationRecord
    belongs_to :receipt, optional: true
    has_one_attached :image
end
