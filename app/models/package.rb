class Package < ApplicationRecord
    belongs_to :courier, :optional => true
end
