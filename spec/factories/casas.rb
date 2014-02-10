# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :casa do
    rua "MyString"
    complemento "MyString"
    bairro "MyString"
    cidade "MyString"
    datainicio "2014-02-10"
    proprietario nil
  end
end
