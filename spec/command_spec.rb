require "Command"

describe Command do
  describe "::new" do

    subject {Command.new("new get milk")}
    it "is instantiated with a command string" do
      expect(subject).to be_a Command
    end
  end
end