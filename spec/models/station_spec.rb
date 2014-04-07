require 'spec_helper'

describe Station do
    it { should have_many(:lines) }
end
