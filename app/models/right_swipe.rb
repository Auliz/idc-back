# frozen_string_literal: true

class RightSwipe < ApplicationRecord

  belongs_to :host, class_name: 'User', foreign_key: :host_id
  belongs_to :guest, class_name: 'User', foreign_key: :guest_id

end
