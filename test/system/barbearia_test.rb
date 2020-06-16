require "application_system_test_case"

class BarbeariaTest < ApplicationSystemTestCase
  setup do
    @barbearium = barbearia(:one)
  end

  test "visiting the index" do
    visit barbearia_url
    assert_selector "h1", text: "Barbearia"
  end

  test "creating a Barbearium" do
    visit barbearia_url
    click_on "New Barbearium"

    fill_in "Capacidade", with: @barbearium.capacidade
    fill_in "Descricao", with: @barbearium.descricao
    fill_in "Endereco", with: @barbearium.endereco
    fill_in "Nome", with: @barbearium.nome
    click_on "Create Barbearium"

    assert_text "Barbearium was successfully created"
    click_on "Back"
  end

  test "updating a Barbearium" do
    visit barbearia_url
    click_on "Edit", match: :first

    fill_in "Capacidade", with: @barbearium.capacidade
    fill_in "Descricao", with: @barbearium.descricao
    fill_in "Endereco", with: @barbearium.endereco
    fill_in "Nome", with: @barbearium.nome
    click_on "Update Barbearium"

    assert_text "Barbearium was successfully updated"
    click_on "Back"
  end

  test "destroying a Barbearium" do
    visit barbearia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Barbearium was successfully destroyed"
  end
end
