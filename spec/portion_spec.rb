require 'rails_helper'

describe Portion do
  it { should validate_presence_of :quantity }
  it { should validate_presence_of :unit_of_measurement }
  it { should validate_presence_of :ingredient_id }

  it { should belong_to :recipe }
end
