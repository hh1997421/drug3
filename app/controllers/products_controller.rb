class ProductsController < ApplicationController
  before_action :search_product, only: [:index, :search]

  def index
    @products = Product.all  # 全商品の情報を取得
    set_product_column       # privateメソッド内で定義
  end

  def search
    @results = @p.result  # 検索条件にマッチした商品の情報を取得
  end

  def show
  end

  private

  def search_product
    @p = Product.ransack(params[:q])  # 検索オブジェクトを生成
  end

  def set_product_column
    @product_status = Product.select("status").distinct  # 重複なくstatusカラムのデータを取り出す
  end
end
