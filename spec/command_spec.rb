require "Command"

describe Command do

  let(:todos) {double(:todos)}

  describe "::new" do

    subject {Command.new(todos,"new get milk")}
    it "is instantiated with a command string" do
      expect(subject).to be_a Command
    end
  end

  describe "running a command" do

    it "can run the create command" do
      expect(todos).to receive(:create).with("get milk")
      subject = Command.new(todos,"create get milk")
    end
  end
end