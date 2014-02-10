require 'spec_helper'

describe "casas/edit" do
  before(:each) do
    @casa = assign(:casa, stub_model(Casa,
      :rua => "MyString",
      :complemento => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :proprietario => nil
    ))
  end

  it "renders the edit casa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", casa_path(@casa), "post" do
      assert_select "input#casa_rua[name=?]", "casa[rua]"
      assert_select "input#casa_complemento[name=?]", "casa[complemento]"
      assert_select "input#casa_bairro[name=?]", "casa[bairro]"
      assert_select "input#casa_cidade[name=?]", "casa[cidade]"
      assert_select "input#casa_proprietario[name=?]", "casa[proprietario]"
    end
  end
end
