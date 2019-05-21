class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @products = Product.find_products(params[:q]) if params[:q]
    logger.debug "This action always displays the list of products"
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @comments = @product.comments.paginate(page: params[:page], per_page: 4).order("created_at DESC")
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit

  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    logger.debug { "-- New product: #{@product.attributes.inspect} --" }
    logger.debug { "-- Product should be valid: #{@product.valid?} --" }
    respond_to do |format|
      if @product.save
        logger.debug { "-- Product was saved. A message will confirm the creation was a success and the admin will be redirected --" }
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        logger.debug { "-- The product was successfully updated. The admin will be redirected to the product show page --" }
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    logger.debug { "-- Site will display a confirm box. Once product has been deleted admin will be redirected to products index page --" }
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :img_url, :price, :q)
    end
end
