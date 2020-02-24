# In spec/docking_station_spec.rb
require "docking_station"

  describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  # it 'releases working bikes' do
  #   bike = subject.dock(bike)
  #   bike = subject.release_bike
  #   expect(bike.working?).to eq(true)
  #   # expect(bike).to release_bike
  # end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
end

  describe '#release_bike' do

  it 'raises an error when there are no bikes available' do
        # Let's not dock a bike first:
        # remember subject == DockingStation.new
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it 'releases a bike' do
    bikes = Bike.new
    subject.dock(bikes)
    # we want to release the bike we docked
    expect(subject.release_bike).to eq bikes
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  # first, let's update our test for #dock
  it 'docks something' do
    bike = Bike.new
    # We want to return the bike we dock
    expect(subject.dock(bike)).to eq [bike]
  end

  it { is_expected.to respond_to(:bikes) }

  # let's update our test for #bike
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    # Again, we need to return the bike we just docked
    expect(subject.bikes).to eq [bike]
  end

  # describe '#dont_release_bike' do

  # it 'raises an error when there is no capacity available' do
  #   expect { subject.dont_release_bike}.to raise_error 'No capacity available'
  # end

   # end

  describe '#dock' do
  it 'raises an error when full' do
    subject.capacity.times {subject.dock Bike.new}
    subject.dock(Bike.new)
  end
    expect { subject.dock Bike.new }.to raise_error 'Docking station full'
  end

  describe "initalization" do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
  it 'defaults capacity' do
    described_class::DEFAULT_CAPACITY.times do
      subject.dock(bike)
    end
    expect{ subject.dock(bike) }.to raise_error 'Docking station full'
  end
end
end
