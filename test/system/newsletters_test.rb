require "application_system_test_case"

class NewslettersTest < ApplicationSystemTestCase
  setup do
    @newsletter = newsletters(:one)
  end

  test "visiting the index" do
    visit newsletters_url
    assert_selector "h1", text: "Newsletters"
  end

  test "creating a Newsletter" do
    visit newsletters_url
    click_on "New Newsletter"

    fill_in "Corpo noticia", with: @newsletter.corpo_noticia
    fill_in "Data coleta", with: @newsletter.data_coleta
    fill_in "Data publicacao", with: @newsletter.data_publicacao
    fill_in "Fonte", with: @newsletter.fonte
    fill_in "Titulo noticia", with: @newsletter.titulo_noticia
    fill_in "Url noticia", with: @newsletter.url_noticia
    click_on "Create Newsletter"

    assert_text "Newsletter was successfully created"
    click_on "Back"
  end

  test "updating a Newsletter" do
    visit newsletters_url
    click_on "Edit", match: :first

    fill_in "Corpo noticia", with: @newsletter.corpo_noticia
    fill_in "Data coleta", with: @newsletter.data_coleta
    fill_in "Data publicacao", with: @newsletter.data_publicacao
    fill_in "Fonte", with: @newsletter.fonte
    fill_in "Titulo noticia", with: @newsletter.titulo_noticia
    fill_in "Url noticia", with: @newsletter.url_noticia
    click_on "Update Newsletter"

    assert_text "Newsletter was successfully updated"
    click_on "Back"
  end

  test "destroying a Newsletter" do
    visit newsletters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Newsletter was successfully destroyed"
  end
end
