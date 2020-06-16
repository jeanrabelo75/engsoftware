require "application_system_test_case"

class BarbershopsTest < ApplicationSystemTestCase
  setup do
    @barbershop = barbershops(:one)
  end

  test "visiting the index" do
    visit barbershops_url
    assert_selector "h1", text: "Barbershops"
  end

  test "creating a Barbershop" do
    visit barbershops_url
    click_on "New Barbershop"

    fill_in "Capacidade", with: @barbershop.capacidade
    fill_in "Endereco", with: @barbershop.endereco
    fill_in "Nome", with: @barbershop.nome
    click_on "Create Barbershop"

    assert_text "Barbershop was successfully created"
    click_on "Back"
  end

  test "updating a Barbershop" do
    visit barbershops_url
    click_on "Edit", match: :first

    fill_in "Capacidade", with: @barbershop.capacidade
    fill_in "Endereco", with: @barbershop.endereco
    fill_in "Nome", with: @barbershop.nome
    click_on "Update Barbershop"

    assert_text "Barbershop was successfully updated"
    click_on "Back"
  end

  test "destroying a Barbershop" do
    visit barbershops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Barbershop was successfully destroyed"
  end
end
