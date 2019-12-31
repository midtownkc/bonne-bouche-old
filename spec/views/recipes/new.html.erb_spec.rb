require 'rails_helper'

RSpec.describe "recipes/new", type: :view do
  before(:each) do
    assign(:recipe, Recipe.new(
      :title => "MyString",
      :prep_time_hours => 1,
      :prep_time_minutes => 1,
      :cook_time_hours => 1,
      :cook_time_minutes => 1,
      :serving_size => "MyString",
      :servings => "MyString",
      :instructions => "MyText",
      :instruction_video => "MyString",
      :style => "MyString",
      :notes => "MyText",
      :description => "MyString"
    ))
  end

  it "renders new recipe form" do
    render

    assert_select "form[action=?][method=?]", recipes_path, "post" do

      assert_select "input[name=?]", "recipe[title]"

      assert_select "input[name=?]", "recipe[prep_time_hours]"

      assert_select "input[name=?]", "recipe[prep_time_minutes]"

      assert_select "input[name=?]", "recipe[cook_time_hours]"

      assert_select "input[name=?]", "recipe[cook_time_minutes]"

      assert_select "input[name=?]", "recipe[serving_size]"

      assert_select "input[name=?]", "recipe[servings]"

      assert_select "textarea[name=?]", "recipe[instructions]"

      assert_select "input[name=?]", "recipe[instruction_video]"

      assert_select "input[name=?]", "recipe[style]"

      assert_select "textarea[name=?]", "recipe[notes]"

      assert_select "input[name=?]", "recipe[description]"
    end
  end
end
