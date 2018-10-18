require 'tool'


describe Tool do
  let(:obj) { described_class.new }
describe "#days_until_birthday" do
  it "calculates the days until the user birthday" do
    expect (obj.days_until_birthday("20-10-1989")).to eql 0
  end
end
end
