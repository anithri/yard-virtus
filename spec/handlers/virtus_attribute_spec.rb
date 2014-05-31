require "spec_helper"

describe VirtusYARD::Handlers::VirtusAttribute, type: :handler do
  before(:all) { parse_file! :virtus_attribute_001 }

  it "does not parse attribute if namespace does not include Virtus declaration" do
    expect(YARD::Registry.at(:Address)).not_to define_readable_attribute(:city)
    expect(YARD::Registry.at(:Address)).not_to define_writable_attribute(:city)
  end

  it "parses attribute name" do
    expect(YARD::Registry.at(:User)).to define_readable_attribute(:name)
    expect(YARD::Registry.at(:User)).to define_writable_attribute(:name)
  end

  it "parses attribute with scalar type" do
    expect(YARD::Registry.at("User#name")).to have_return_type("String")
  end

  it "parses attribute with collection type" do
    expect(YARD::Registry.at("User#friends")).to have_return_type("Array<User>")
  end

  it "parses attribute with collection map type" do
    expect(YARD::Registry.at("User#addresses")).to have_return_type("Hash{Symbol => Address}")
  end
end
