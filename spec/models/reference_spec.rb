require 'rails_helper'

describe Reference do
  it {should validate_presence_of :referee}
  it {should validate_presence_of :referee_info}
  it {should validate_presence_of :body}

  it {should belong_to :user}
end
