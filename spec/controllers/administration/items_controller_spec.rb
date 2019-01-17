# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Administration::ItemsController, type: :controller do
  # describe "GET #index" do
  #   it "returns http success" do
  #     get :index
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # before(:each) do
  #   put :update, :id => @article.id, :article => attr
  #   @article.reload
  # end

  describe "PUT #update/:id" do
    subject(:update_item) { put :update, params: params }

    let(:item) { create(:item) }
    let(:params) { { id: item.id } }

    context 'without params' do
      it { expect(response).to have_http_status(:success) }
    end

    context 'with params' do
      it { expect(response).to have_http_status(:success) }

      # it "should return correct discount_percentage" do
      #   visit edit_administration_item(item)
      #   fill_in "discount_percentage", with: 50
      #   expect(item.price).to_eq (item.original_price * (100 - item.discount_percentage )) / 100
      # end
    end
  end
end
