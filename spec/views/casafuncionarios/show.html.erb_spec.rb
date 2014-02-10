require 'spec_helper'

describe "casafuncionarios/show" do
  before(:each) do
    @casafuncionario = assign(:casafuncionario, stub_model(Casafuncionario,
      :casa => nil,
      :funcionario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
