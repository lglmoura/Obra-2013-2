require 'spec_helper'

describe "proprietarios/index" do
  before(:each) do
    assign(:proprietarios, [
      stub_model(Proprietario,
        :nome => "Nome",
        :idade => 1,
        :sexo => "Sexo",
        :rua => "Rua",
        :numero => "Numero",
        :complemento => "Complemento",
        :cpf => "Cpf"
      ),
      stub_model(Proprietario,
        :nome => "Nome",
        :idade => 1,
        :sexo => "Sexo",
        :rua => "Rua",
        :numero => "Numero",
        :complemento => "Complemento",
        :cpf => "Cpf"
      )
    ])
  end

  it "renders a list of proprietarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    assert_select "tr>td", :text => "Complemento".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
  end
end
