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
	it "Only working bikes should be released" do
		2.times{subject.dock (Bike.new)}
		bike1 = subject.release_bike
		bike1.report_broken
		subject.dock (bike1)
		bike2 = subject.release_bike
		expect(bike2.working?).to eq true
	end
  end

  describe "#dock" do
  	it "raises error when station is full" do
  		subject.capacity.times { subject.dock( double :bike ) }
  		expect {subject.dock( double :bike )}.to raise_error "Station is full"
  	end
  end

  it "Has a default capacity" do
  	expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  # it { is_expected.to respond_to(:initialize).with(1).argument }
  	context 'let test be 50' do
	  let(:test){ 50 } 
	  subject(:large_capacity){DockingStation.new(test)}
	  it 'should initialize with one argument' do
	  expect(subject.capacity).to eq test
  	  end
	end

  
end