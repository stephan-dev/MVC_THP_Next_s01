# frozen_string_literal: true

# == Schema Information
#
# Table name: items
#
#  id                  :bigint(8)        not null, primary key
#  original_price      :float            not null
#  has_discount        :boolean          default(FALSE)
#  discount_percentage :integer          default(0)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Item < ApplicationRecord
  def price
    return original_price unless has_discount

    # calculate discount without setting discount_percentage to float
    (original_price * (100 - discount_percentage )) / 100
  end

  def self.average_price
    sum = 0
    Item.all.map{ |item| sum += item.price }
    sum / Item.count
  end
end
