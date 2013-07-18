class HowtolistsController < ApplicationController
  before_filter :find_product
  before_filter :find_howtolist, :only => [:show, :edit, :update, :destroy]
  # GET /howtolists
  # GET /howtolists.json
  def index
    @howtolists = Howtolist.all
    # @howtolists = @product.howtolists.all

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @howtolists }
    # end
  end

  # GET /howtolists/1
  # GET /howtolists/1.json
  def show
    # @howtolist = @product.howtolists.find(params[:id])

    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @howtolist }
    # end
  end

  # GET /howtolists/new
  # GET /howtolists/new.json
  def new
    @howtolist = @product.howtolists.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @howtolist }
    end
  end

  # GET /howtolists/1/edit
  def edit
    # @howtolist = @product.howtolists.find(params[:id])
  end

  # POST /howtolists
  # POST /howtolists.json
  def create
    @howtolist = @product.howtolists.build(params[:howtolist])
    if @howtolist.save
      redirect_to [@product, @howtolist]
    else
      render :action => "new"
    end
  end

  # PUT /howtolists/1
  # PUT /howtolists/1.json
  def update
    # @howtolist = @product.howtolists.find(params[:id])

    # respond_to do |format|
    #   if @howtolist.update_attributes(params[:howtolist])
    #     format.html { redirect_to [@product, @howtolist], notice: 'Howtolist was successfully updated.' }
    #     format.json { head :no_content }
    #   else
    #     format.html { render action: "edit" }
    #     format.json { render json: @howtolist.errors, status: :unprocessable_entity }
    #   end
    # end
    if @howtolist.update_attributes(params[:howtolist])
      flash[:notice] = "List has been updated."
      redirect_to [@product, @howtolist]
    else
      flash[:alert] = "List has not been updated."
      render :action => "edit"
    end
  end

  # DELETE /howtolists/1
  # DELETE /howtolists/1.json
  def destroy
    # @howtolist = @product.howtolists.find(params[:id])
    @howtolist.destroy
    flash[:notice] = "List has been deleted."
    redirect_to @product

    # respond_to do |format|
    #   format.html { redirect_to product_howtolists_path(@product) }
    #   format.json { head :no_content }
    # end
  end

  private
    def find_product
      @product = Product.find(params[:product_id])
    end

    def find_howtolist
      @howtolist = @product.howtolists.find(params[:id])
    end
end
