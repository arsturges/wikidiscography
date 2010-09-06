class MediaController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @media = Medium.all
    respond_with(@media)
  end

  def show
    @medium = Medium.find(params[:id])
    respond_with(@medium)
  end

  def new
    @medium = Medium.new
    respond_with(@medium)
  end

  # GET /media/1/edit
  def edit
    @medium = Medium.find(params[:id])
  end

  # POST /media
  # POST /media.xml
  def create
    @medium = Medium.new(params[:medium])

    respond_to do |format|
      if @medium.save
        flash[:notice] = 'Medium was successfully created.'
        format.html { redirect_to(@medium) }
        format.xml  { render :xml => @medium, :status => :created, :location => @medium }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @medium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /media/1
  # PUT /media/1.xml
  def update
    @medium = Medium.find(params[:id])

    respond_to do |format|
      if @medium.update_attributes(params[:medium])
        flash[:notice] = 'Medium was successfully updated.'
        format.html { redirect_to(@medium) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @medium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /media/1
  # DELETE /media/1.xml
  def destroy
    @medium = Medium.find(params[:id])
    @medium.destroy

    respond_to do |format|
      format.html { redirect_to(media_url) }
      format.xml  { head :ok }
    end
  end
end
