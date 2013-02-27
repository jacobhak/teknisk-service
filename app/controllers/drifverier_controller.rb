class DrifverierController < ApplicationController
  # GET /drifverier
  # GET /drifverier.json
  def index
    @drifverier = Drifveri.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drifverier }
    end
  end

  # GET /drifverier/1
  # GET /drifverier/1.json
  def show
    @drifveri = Drifveri.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drifveri }
    end
  end

  # GET /drifverier/new
  # GET /drifverier/new.json
  def new
    @drifveri = Drifveri.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drifveri }
    end
  end

  # GET /drifverier/1/edit
  def edit
    @drifveri = Drifveri.find(params[:id])
  end

  # POST /drifverier
  # POST /drifverier.json
  def create
    @drifveri = Drifveri.new(params[:drifveri])

    respond_to do |format|
      if @drifveri.save
        format.html { redirect_to @drifveri, notice: 'Drifveri was successfully created.' }
        format.json { render json: @drifveri, status: :created, location: @drifveri }
      else
        format.html { render action: "new" }
        format.json { render json: @drifveri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drifverier/1
  # PUT /drifverier/1.json
  def update
    @drifveri = Drifveri.find(params[:id])

    respond_to do |format|
      if @drifveri.update_attributes(params[:drifveri])
        format.html { redirect_to @drifveri, notice: 'Drifveri was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drifveri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drifverier/1
  # DELETE /drifverier/1.json
  def destroy
    @drifveri = Drifveri.find(params[:id])
    @drifveri.destroy

    respond_to do |format|
      format.html { redirect_to drifverier_url }
      format.json { head :no_content }
    end
  end
end
