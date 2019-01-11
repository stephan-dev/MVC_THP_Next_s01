# frozen_string_literal: true

module Administration
  class ItemsController < AdministrationController
    def index
      @items = Item.all
    end

    def update
      @item = Item.find(params[:id])
      @item.update(item_params)
      if @item[:discount_percentage].positive?
        @item.update(has_discount: true)
      else
        @item.update(has_discount: false)
      end

      redirect_to administration_items_path
    end

    private

    def item_params
      params.require(:item).permit(:discount_percentage)
    end
  end
end
