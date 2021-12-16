require "dockingStation"
describe DockingStation do
  describe "respond to" do
    it {is_expected.to respond_to :release_bike}
  end 
  it 'releases a working bike' do
    dockingStation = DockingStation.new
    bike = dockingStation.release_bike 
    expect(bike).to be_working
  end
  describe 'responds to dock' do 
    it {is_expected.to respond_to(:dock).with(1).argument}
  end
  describe "docked bike" do 
    it {is_expected.to respond_to(:docked)}
  end
  it 'docked should return bike docked using dock' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    expect(docking_station.docked).to eq(bike)
  end

end