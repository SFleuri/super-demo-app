class MicrrapostsController < ApplicationController
  # GET /micrraposts
  # GET /micrraposts.json
  def index
    @micrraposts = Micrrapost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micrraposts }
    end
  end

  # GET /micrraposts/1
  # GET /micrraposts/1.json
  def show
    @micrrapost = Micrrapost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micrrapost }
    end
  end

  # GET /micrraposts/new
  # GET /micrraposts/new.json
  def new
    @micrrapost = Micrrapost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micrrapost }
    end
  end

  # GET /micrraposts/1/edit
  def edit
    @micrrapost = Micrrapost.find(params[:id])
  end

  # POST /micrraposts
  # POST /micrraposts.json
  def create
    @micrrapost = Micrrapost.new(params[:micrrapost])

    respond_to do |format|
      if @micrrapost.save
        format.html { redirect_to @micrrapost, notice: 'Micrrapost was successfully created.' }
        format.json { render json: @micrrapost, status: :created, location: @micrrapost }
      else
        format.html { render action: "new" }
        format.json { render json: @micrrapost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micrraposts/1
  # PUT /micrraposts/1.json
  def update
    @micrrapost = Micrrapost.find(params[:id])

    respond_to do |format|
      if @micrrapost.update_attributes(params[:micrrapost])
        format.html { redirect_to @micrrapost, notice: 'Micrrapost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micrrapost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micrraposts/1
  # DELETE /micrraposts/1.json
  def destroy
    @micrrapost = Micrrapost.find(params[:id])
    @micrrapost.destroy

    respond_to do |format|
      format.html { redirect_to micrraposts_url }
      format.json { head :no_content }
    end
  end
end
