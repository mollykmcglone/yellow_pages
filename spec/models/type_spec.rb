require 'rails_helper'

describe Type do
  it { should validate_presence_of :name }
end
