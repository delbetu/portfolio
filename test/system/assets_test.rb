require "application_system_test_case"

class AssetsTest < ApplicationSystemTestCase
  setup do
    @asset = assets(:one)
  end

  test "visiting the index" do
    visit assets_url
    assert_selector "h1", text: "Assets"
  end

  test "should create asset" do
    visit assets_url
    click_on "New asset"

    fill_in "Adquired units", with: @asset.adquired_units
    fill_in "Adquisition date", with: @asset.adquisition_date
    fill_in "Adquisition unit price cents", with: @asset.adquisition_unit_price_cents
    fill_in "Broker", with: @asset.broker
    fill_in "Name", with: @asset.name
    fill_in "Type", with: @asset.type
    click_on "Create Asset"

    assert_text "Asset was successfully created"
    click_on "Back"
  end

  test "should update Asset" do
    visit asset_url(@asset)
    click_on "Edit this asset", match: :first

    fill_in "Adquired units", with: @asset.adquired_units
    fill_in "Adquisition date", with: @asset.adquisition_date
    fill_in "Adquisition unit price cents", with: @asset.adquisition_unit_price_cents
    fill_in "Broker", with: @asset.broker
    fill_in "Name", with: @asset.name
    fill_in "Type", with: @asset.type
    click_on "Update Asset"

    assert_text "Asset was successfully updated"
    click_on "Back"
  end

  test "should destroy Asset" do
    visit asset_url(@asset)
    click_on "Destroy this asset", match: :first

    assert_text "Asset was successfully destroyed"
  end
end
