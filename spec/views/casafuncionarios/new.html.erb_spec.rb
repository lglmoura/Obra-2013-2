require 'spec_helper'

describe "casafuncionarios/new" do
  before(:each) do
    assign(:casafuncionario, stub_model(Casafuncionario,
      :casa => nil,
      :funcionario => nil
    ).as_new_record)
  end

  it "renders new casafuncionario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", casafuncionarios_path, "post" do
      assert_select "input#casafuncionario_casa[name=?]", "casafuncionario[casa]"
      assert_select "input#casafuncionario_funcionario[name=?]", "casafuncionario[funcionario]"
    end
  end
end
