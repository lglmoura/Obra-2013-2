require 'spec_helper'

describe "proprietarios/edit" do
  before(:each) do
    @proprietario = assign(:proprietario, stub_model(Proprietario,
      :nome => "MyString",
      :idade => 1,
      :sexo => "MyString",
      :rua => "MyString",
      :numero => "MyString",
      :complemento => "MyString",
      :cpf => "MyString"
    ))
  end

  it "renders the edit proprietario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", proprietario_path(@proprietario), "post" do
      assert_select "input#proprietario_nome[name=?]", "proprietario[nome]"
      assert_select "input#proprietario_idade[name=?]", "proprietario[idade]"
      assert_select "input#proprietario_sexo[name=?]", "proprietario[sexo]"
      assert_select "input#proprietario_rua[name=?]", "proprietario[rua]"
      assert_select "input#proprietario_numero[name=?]", "proprietario[numero]"
      assert_select "input#proprietario_complemento[name=?]", "proprietario[complemento]"
      assert_select "input#proprietario_cpf[name=?]", "proprietario[cpf]"
    end
  end
end
