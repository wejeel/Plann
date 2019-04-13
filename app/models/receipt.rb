class Receipt < ApplicationRecord
    has_many:products
    has_one :upload
   # has_one_attached :image
end
 