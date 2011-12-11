class UGroupsController < ApplicationController
  # GET /u_groups
  # GET /u_groups.json
  def index
    @u_groups = UGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @u_groups }
    end
  end

  # GET /u_groups/1
  # GET /u_groups/1.json
  def show
    @u_group = UGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @u_group }
    end
  end

  # GET /u_groups/new
  # GET /u_groups/new.json
  def new
    @u_group = UGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @u_group }
    end
  end

  # GET /u_groups/1/edit
  def edit
    @u_group = UGroup.find(params[:id])
  end

  # POST /u_groups
  # POST /u_groups.json
  def create
    @u_group = UGroup.new(params[:u_group])

    respond_to do |format|
      if @u_group.save
        format.html { redirect_to @u_group, notice: 'U group was successfully created.' }
        format.json { render json: @u_group, status: :created, location: @u_group }
      else
        format.html { render action: "new" }
        format.json { render json: @u_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /u_groups/1
  # PUT /u_groups/1.json
  def update
    @u_group = UGroup.find(params[:id])

    respond_to do |format|
      if @u_group.update_attributes(params[:u_group])
        format.html { redirect_to @u_group, notice: 'U group was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @u_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /u_groups/1
  # DELETE /u_groups/1.json
  def destroy
    @u_group = UGroup.find(params[:id])
    @u_group.destroy

    respond_to do |format|
      format.html { redirect_to u_groups_url }
      format.json { head :ok }
    end
  end
end
