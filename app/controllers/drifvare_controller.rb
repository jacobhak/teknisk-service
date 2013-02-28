class DrifvareController < ApplicationController
  before_filter :authenticate
  before_filter :correct_user,   only: [:edit, :update]
  # GET /drifvare
  # GET /drifvare.json
  def index
    @drifvare = Drifvare.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drifvare }
    end
  end

  # GET /drifvare/1
  # GET /drifvare/1.json
  def show
    @drifvare = Drifvare.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drifvare }
    end
  end

  # GET /drifvare/new
  # GET /drifvare/new.json
  def new
    @drifvare = Drifvare.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drifvare }
    end
  end

  # GET /drifvare/1/edit
  def edit
    @drifvare = Drifvare.find(params[:id])
  end

  # POST /drifvare
  # POST /drifvare.json
  def create
    @drifvare = Drifvare.new(params[:drifvare])

    respond_to do |format|
      if @drifvare.save
        format.html { redirect_to @drifvare, notice: 'Drifvare was successfully created.' }
        format.json { render json: @drifvare, status: :created, location: @drifvare }
      else
        format.html { render action: "new" }
        format.json { render json: @drifvare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drifvare/1
  # PUT /drifvare/1.json
  def update
    @drifvare = Drifvare.find(params[:id])

    respond_to do |format|
      if @drifvare.update_attributes(params[:drifvare])
        format.html { redirect_to @drifvare, notice: 'Drifvare was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drifvare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drifvare/1
  # DELETE /drifvare/1.json
  def destroy
    @drifvare = Drifvare.find(params[:id])
    @drifvare.destroy

    respond_to do |format|
      format.html { redirect_to drifvare_index_url }
      format.json { head :no_content }
    end
  end

  private
    def correct_user
      @drifvare = Drifvare.find(params[:id])
      redirect_to '/' unless current_user?(@drifvare) || current_user.admin?
    end
end
