require "spec_helper"

describe Rack::Log::VERSION do
  it "should be a string" do
    expect(Rack::Log::VERSION).to be_kind_of(String)
  end
end
