class CategoriesOfCertificateTypesController < ApplicationController
  # GET /categories_of_certificate_types
  # GET /categories_of_certificate_types.json
  def index
    @categories_of_certificate_types = CategoriesOfCertificateType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories_of_certificate_types }
    end
  end

  # GET /categories_of_certificate_types/1
  # GET /categories_of_certificate_types/1.json
  def show
    @categories_of_certificate_type = CategoriesOfCertificateType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @categories_of_certificate_type }
    end
  end

  # GET /categories_of_certificate_types/new
  # GET /categories_of_certificate_types/new.json
  def new
    @categories_of_certificate_type = CategoriesOfCertificateType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @categories_of_certificate_type }
    end
  end

  # GET /categories_of_certificate_types/1/edit
  def edit
    @categories_of_certificate_type = CategoriesOfCertificateType.find(params[:id])
  end

  # POST /categories_of_certificate_types
  # POST /categories_of_certificate_types.json
  def create
    @categories_of_certificate_type = CategoriesOfCertificateType.new(params[:categories_of_certificate_type])

    respond_to do |format|
      if @categories_of_certificate_type.save
        format.html { redirect_to @categories_of_certificate_type, notice: 'Categories of certificate type was successfully created.' }
        format.json { render json: @categories_of_certificate_type, status: :created, location: @categories_of_certificate_type }
      else
        format.html { render action: "new" }
        format.json { render json: @categories_of_certificate_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categories_of_certificate_types/1
  # PUT /categories_of_certificate_types/1.json
  def update
    @categories_of_certificate_type = CategoriesOfCertificateType.find(params[:id])

    respond_to do |format|
      if @categories_of_certificate_type.update_attributes(params[:categories_of_certificate_type])
        format.html { redirect_to @categories_of_certificate_type, notice: 'Categories of certificate type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @categories_of_certificate_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_of_certificate_types/1
  # DELETE /categories_of_certificate_types/1.json
  def destroy
    @categories_of_certificate_type = CategoriesOfCertificateType.find(params[:id])
    @categories_of_certificate_type.destroy

    respond_to do |format|
      format.html { redirect_to categories_of_certificate_types_url }
      format.json { head :no_content }
    end
  end
end
