require "docking_station"

describe DockingStation do 
	it { is_expected.to respond_to :release_bike }

	it "Released bike expected to be working" do
		bike = subject.release_bike
		expect(bike).to respond_to :working?
	end
end