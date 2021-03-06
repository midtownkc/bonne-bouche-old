# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'recipes/index', type: :view do
  before(:each) do
    assign(:recipes, [
             Recipe.create!(
               title: 'Title',
               prep_time_hours: 2,
               prep_time_minutes: 3,
               cook_time_hours: 4,
               cook_time_minutes: 5,
               serving_size: 'Serving Size',
               servings: 'Servings',
               instructions: 'MyText',
               instruction_video: 'Instruction Video',
               style: 'Style',
               notes: 'MyText',
               description: 'Description'
             ),
             Recipe.create!(
               title: 'Title',
               prep_time_hours: 2,
               prep_time_minutes: 3,
               cook_time_hours: 4,
               cook_time_minutes: 5,
               serving_size: 'Serving Size',
               servings: 'Servings',
               instructions: 'MyText',
               instruction_video: 'Instruction Video',
               style: 'Style',
               notes: 'MyText',
               description: 'Description'
             )
           ])
  end

  it 'renders a list of recipes' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: 4.to_s, count: 2
    assert_select 'tr>td', text: 5.to_s, count: 2
    assert_select 'tr>td', text: 'Serving Size'.to_s, count: 2
    assert_select 'tr>td', text: 'Servings'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'Instruction Video'.to_s, count: 2
    assert_select 'tr>td', text: 'Style'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: 'Description'.to_s, count: 2
  end
end
