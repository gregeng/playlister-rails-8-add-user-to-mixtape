require 'spec_helper'

describe "genres/edit" do
  before(:each) do
    @genre = assign(:genre, stub_model(Genre,
      :name => "MyString"
    ))
  end

  it "renders the edit genre form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", genre_path(@genre), "post" do
      assert_select "input#genre_name[name=?]", "genre[name]"
    end
  end
end
