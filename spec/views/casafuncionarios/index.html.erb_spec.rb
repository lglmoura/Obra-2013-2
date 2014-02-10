require 'spec_helper'

describe "casafuncionarios/index" do
  before(:each) do
    assign(:casafuncionarios, [
      stub_model(Casafuncionario,
        :casa => nil,
        :funcionario => nil
      ),
      stub_model(Casafuncionario,
        :casa => nil,
        :funcionario => nil
      )
    ])
  end

  it "renders a list of casafuncionarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
