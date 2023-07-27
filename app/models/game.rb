class Game < ActiveRecord::Base
    belongs_to :company
    belongs_to :genre
    has_many :reviews
end