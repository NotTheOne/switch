require 'spec_helper'

describe UserBody do # Unit tests SHoulda matchers
	it { should validate_presence_of(:age)}
  it { should validate_presence_of(:height_cm)}
  it { should validate_presence_of(:weight_kg)}
end
