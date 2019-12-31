require 'rails_helper'

RSpec.describe "recipes/show", type: :view do
  before(:each) do
    @recipe = assign(:recipe, Recipe.create!(
      :title => "Title",
      :prep_time_hours => 2,
      :prep_time_minutes => 3,
      :cook_time_hours => 4,
      :cook_time_minutes => 5,
      :serving_size => "Serving Size",
      :servings => "Servings",
      :instructions => "MyText",
      :instruction_video => "Instruction Video",
      :style => "Style",
      :notes => "MyText",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Serving Size/)
    expect(rendered).to match(/Servings/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Instruction Video/)
    expect(rendered).to match(/Style/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Description/)
  end
end
