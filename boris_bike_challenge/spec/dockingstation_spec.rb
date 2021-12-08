require 'docking_station'
# it "releases a bike if it is working"
describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}
end