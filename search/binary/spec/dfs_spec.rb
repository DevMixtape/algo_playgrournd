require_relative "./spec_helper"
require_relative "../dfs"

describe Binary::Dfs do
  let(:root_node) {
    ceo = ::Binary::Node.new(value: 1000)
    pres = ::Binary::Node.new(value: 500)
    coo = ::Binary::Node.new(value: 500)

    vpOfToys = ::Binary::Node.new(value: 450)
    vpOfToys.left = ::Binary::Node.new(value: 250)
    vpOfToys.right = ::Binary::Node.new(value: 280)

    vpOfLuck = ::Binary::Node.new(value: 400)
    vpOfLuck.left = ::Binary::Node.new(value: 220)
    vpOfLuck.right = ::Binary::Node.new(value: 260)

    vpOfMeetings = ::Binary::Node.new(value: 380)
    vpOfMeetings.left = ::Binary::Node.new(value: 210)
    vpOfMeetings.right = ::Binary::Node.new(value: 220)

    vpOfVps = ::Binary::Node.new(value: 350)
    vpOfVps.left = ::Binary::Node.new(value: 230)
    vpOfVps.right = ::Binary::Node.new(value: 240)

    ceo.left = pres
    ceo.right = coo
    pres.right = vpOfToys
    pres.left = vpOfLuck
    coo.left = vpOfMeetings
    coo.right = vpOfVps
    ceo
  }

  context "search" do
    it "returns the node of a given target value" do
      binding.pry
    end
  end
end
