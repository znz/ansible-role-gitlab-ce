require 'spec_helper'

describe package('gitlab-ce') do
  it { should be_installed }
end
