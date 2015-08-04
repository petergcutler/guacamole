class Trope < ActiveRecord::Base
  has_many :panes, dependent: :destroy
  belongs_to :user
end
