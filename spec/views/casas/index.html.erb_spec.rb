require 'spec_helper'

describe "casas/index" do
  before(:each) do
    assign(:casas, [
      stub_model(Casa,
        :rua => "Rua",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :proprietario => nil
      ),
      stub_model(Casa,
        :rua => "Rua",
        :complemento => "Complemento",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :proprietario => nil
      )
    ])
  end

  it "renders a list of casas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
