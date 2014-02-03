require 'spec_helper'

describe "proprietarios/show" do
  before(:each) do
    @proprietario = assign(:proprietario, stub_model(Proprietario,
      :nome => "Nome",
      :idade => 1,
      :sexo => "Sexo",
      :rua => "Rua",
      :numero => "Numero",
      :complemento => "Complemento",
      :cpf => "Cpf"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/1/)
    rendered.should match(/Sexo/)
    rendered.should match(/Rua/)
    rendered.should match(/Numero/)
    rendered.should match(/Complemento/)
    rendered.should match(/Cpf/)
  end
end
