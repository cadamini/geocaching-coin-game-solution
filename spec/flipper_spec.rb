# frozen_string_literal: true

require 'spec_helper'
require 'coin_set'
require 'flipper'

RSpec.describe Flipper do
  it 'iterates over the coins' do
    coin_set = CoinSet.new(4)
    expect(
      Flipper.new(coin_set).every_nth_coin
    ).to eq [[1, nil], [nil, 2], [nil, 3], [4, nil]]
  end
end
