require 'spec_helper'

describe ManhattanjsEvent do
 
  describe "#upcoming?" do
    it "returns upcoming events" do
      event = create(:manhattanjs_event)
      create(:past_manhattanjs_event)
      expect(ManhattanjsEvent.upcoming).to eq [event]
    end
  end

  describe "#upcoming?" do
    it "should be true for an upcoming event" do
      event = build(:manhattanjs_event)
      expect(event.upcoming?).to be_truthy
    end
    it "should be false for a past event" do
      event = build(:past_manhattanjs_event)
      expect(event.upcoming?).to be_falsey
    end
  end
end