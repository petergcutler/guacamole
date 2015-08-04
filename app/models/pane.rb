class Pane < ActiveRecord::Base
  has_many :items, dependent: :destroy
  belongs_to :trope
end
