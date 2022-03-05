class Review < ApplicationRecord
belongs_to :booking

validates :bathroomless_raiting, inclusion: { in: [1, 2, 3, 4, 5] }
validates :owner_raiting, inclusion: { in: [1, 2, 3, 4, 5] }
end
