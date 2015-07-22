require "docking_station"

describe DockingStation do 
	it { is_expected.to respond_to :release_bike }

	it "Released bike expected to be working" do
		subject.dock Bike.new
		bike = subject.release_bike
		expect(bike).to respond_to :working?
	end

	it { is_expected.to respond_to(:dock).with(1).argument }

  describe "#release_bike" do
	it "Raise error when no bikes available" do
		expect { subject.release_bike }.to raise_error "No bikes available"
	end
  end

  describe "#dock" do
  	it "raises error when station is full" do
  		expect {subject.dock(Bike.new)}.to raise_error "Station is full"
  	end
  end

end