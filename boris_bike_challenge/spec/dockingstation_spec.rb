require 'docking_station' 
require 'bike'
docking_station = DockingStation.new

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)}

  it 'releases working bikes' do
    bike = Bike.new
    
    expect(bike.working?).to eq(true)
  end

  it 'docks a bike' do
    bike = Bike.new
    docking_station.dock(bike) 
    #it { is_expected.to respond_to(:dock).(bike)}
    #expect { docking_station.dock(bike) }.to_not raise_error
    expect(docking_station.bike).to eq(bike)
  end
  # expect { piggy_bank.deposit_coin("50p") }.to_not raise_error

end