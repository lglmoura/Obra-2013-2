# coding: utf-8
require 'spec_helper'

feature 'gerenciar casa' do

  scenario 'incluir casa' do #, :javascript => true  do

    proprietario = FactoryGirl.create(:proprietario, :nome => 'XXX')

    visit new_casa_path

    preencher_e_verificar_casa
   

  end

  scenario 'alterar casa' do #, :javascript => true  do

    proprietario = FactoryGirl.create(:proprietario, :nome => 'XXX')

    casa = FactoryGirl.create(:casa,:proprietario => proprietario)

    visit edit_casa_path(casa)

    preencher_e_verificar_casa


  end

  scenario 'excluir casa' do #, :javascript => true  do

    proprietario = FactoryGirl.create(:proprietario, :nome => 'XXX')

    casa = FactoryGirl.create(:casa,:proprietario => proprietario)

    visit casas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_casa
  
    fill_in 'Rua', :with => 'Rua dos BOBOS'
    fill_in 'Complemento', :with => 'n 01'
    fill_in 'Bairro', :with => 'Centro'
    fill_in 'Cidade', :with => 'Campos'
    fill_in 'Data Inicio', :with => '2013-07-07'

    select 'XXX', :from => 'Proprietario' 
    
    click_button 'Salvar'
    
   
    page.should have_content 'Rua: Rua dos BOBOS'
    page.should have_content 'Complemento: n 01'
    page.should have_content 'Bairro: Centro'
    page.should have_content 'Cidade: Campos'
    page.should have_content 'Data Inicio: 2013-07-07'

    page.should have_content 'Proprietario: XXX'
    
  end

      

end
