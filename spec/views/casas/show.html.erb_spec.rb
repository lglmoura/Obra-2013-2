require 'spec_helper'

describe "casas/show" do
  before(:each) do
    @casa = assign(:casa, stub_model(Casa,
      :rua => "Rua",
      :complemento => "Complemento",
      :bairro => "Bairro",
      :cidade => "Cidade",
      :proprietario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rua/)
    rendered.should match(/Complemento/)
    rendered.should match(/Bairro/)
    rendered.should match(/Cidade/)
    rendered.should match(//)
  end
end
