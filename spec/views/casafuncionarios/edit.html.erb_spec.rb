require 'spec_helper'

describe "casafuncionarios/edit" do
  before(:each) do
    @casafuncionario = assign(:casafuncionario, stub_model(Casafuncionario,
      :casa => nil,
      :funcionario => nil
    ))
  end

  it "renders the edit casafuncionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", casafuncionario_path(@casafuncionario), "post" do
      assert_select "input#casafuncionario_casa[name=?]", "casafuncionario[casa]"
      assert_select "input#casafuncionario_funcionario[name=?]", "casafuncionario[funcionario]"
    end
  end
end
