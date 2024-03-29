require 'test_helper'

describe Metronome do
  it 'just sleeps, honestly' do
    metronome = Metronome.new(60)
    before = Time.now
    metronome.beat
    after = Time.now
    # centisecond precision is fine
    (after - before).must_be_within_epsilon(1, 0.01)
  end
end
