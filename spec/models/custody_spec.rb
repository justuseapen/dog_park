require 'spec_helper'

describe Custody do
  it { should belong_to(:dog) }
  it { should belong_to(:owner) }
end
