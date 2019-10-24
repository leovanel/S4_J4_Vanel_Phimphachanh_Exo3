class Gossip < ApplicationRecord
  belongs_to :user
  has_many :join_tag_gossips
end
