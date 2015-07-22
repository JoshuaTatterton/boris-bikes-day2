require 'bike'
describe Bike do
  it { is_expected.to respond_to :working? }
  it { is_expected.to respond_to :report_broken}
  
  it 'report broken, bikes should not be working' do
  	subject.report_broken
  	expect(subject.working?).to eq false
  end
end