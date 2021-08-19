require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "breakfast", carbs: 35, proteins: 20, fats: 10, calories: 700)
    assert entry.save
  end

  test "should not save entry without calories" do
    entry = Entry.new(meal_type: "breakfast", carbs: 35, proteins: 20, fats: 10)
    assert_not entry.save
  end

end
