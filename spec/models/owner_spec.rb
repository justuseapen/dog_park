require 'spec_helper'

describe Owner do
	let(:blank_values) { [nil,''] }
  it { should have_valid(:first_name).when('Audrey','Celeste') }
  it { should_not have_valid(:first_name).when(*blank_values) }  
  it { should have_valid(:last_name).when('Hepburn','Skovira') }
  it { should_not have_valid(:last_name).when(*blank_values) }    
  it { should have_valid(:email).when('user@example.com') }          
  it { should_not have_valid(:email).when('user@mycom',                  
    'usermy.com',
    'user',
    '.com',
    'my.com',
    *blank_values) }
  it { should have_many(:custodies) }
  it { should have_many(:dogs).through(:custodies) }
end
