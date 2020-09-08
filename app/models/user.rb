# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  validates_uniqueness_of :username
  
  has_many :host_swipes, class_name: 'RightSwipe', foreign_key: 'host_id', dependent: :destroy
  has_many :guest_swipes, class_name: 'RightSwipe', foreign_key: 'guest_id', dependent: :destroy
  has_many :hosts, through: :host_swipes, source: :host
  has_many :guests, through: :guest_swipes, source: :guest
end
