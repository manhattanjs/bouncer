require 'spec_helper'

describe EventAttendeesController do

  describe "GET 'index'" do
    it "returns 200" do
      get :index
      expect(response).to be_success
    end

    it "returns upcoming events" do
      mjs_events = create_list(:manhattanjs_event, 2)
      get :index
      expect(assigns(:events)).to eq mjs_events
    end
  end

end
