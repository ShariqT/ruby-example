require "spec_helper"

describe Lob do

  it "should return the client object for the valid version" do
    lob = Lob::Client.new(api_key: "test", api_version: "2014-11-25")
    lob.must_be_kind_of(Lob::Client)
    assert lob.config[:api_version] == "2014-11-25"
  end