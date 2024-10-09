# frozen_string_literal: true

require "rails_helper"

RSpec.describe Book, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      book = Book.new(name: nil)
      expect(book).to_not be_valid
    end
  end
end
