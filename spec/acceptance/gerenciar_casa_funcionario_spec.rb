# coding: utf-8
require 'spec_helper'

feature 'gerenciar casa funcionario' do

  scenario 'incluir casa funcionario' do #, :javascript => true  do

    casa = FactoryGirl.create(:casa, :rua => "YYY") 
    funcionario = FactoryGirl.create(:funcionario, :nome => 'XXX')

    visit new_casafuncionario_path

    preencher_e_verificar_casa_funcionario
   

  end

  scenario 'alterar casa_funcionario' do #, :javascript => true  do

    casa = FactoryGirl.create(:casa, :rua => "YYY") 
    funcionario = FactoryGirl.create(:funcionario, :nome => 'XXX')

    casafuncionario = FactoryGirl.create(:casafuncionario,:casa => casa,:funcionario => funcionario)

    visit edit_casafuncionario_path(casafuncionario)

    preencher_e_verificar_casa_funcionario


  end

  scenario 'excluir casa funcionario' do #, :javascript => true  do

    casa = FactoryGirl.create(:casa, :rua => "YYY") 
    funcionario = FactoryGirl.create(:funcionario, :nome => 'XXX')

    casafuncionario = FactoryGirl.create(:casafuncionario,:casa => casa,:funcionario => funcionario)

    visit casafuncionarios_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_casa_funcionario

    select 'YYY', :from => 'Casa'
    select 'XXX', :from => 'Funcionario'

    fill_in 'Data Entrada', :with => '2014-02-10'
    fill_in 'Data Saida', :with => '2014-02-10'
    
    click_button 'Salvar'
    
    page.should have_content 'Casa: YYY'
    page.should have_content 'Funcionario: XXX'
    page.should have_content 'Data Entrada: 2014-02-10'
    page.should have_content 'Data Saida: 2014-02-10'
    
    
  end

      

end
