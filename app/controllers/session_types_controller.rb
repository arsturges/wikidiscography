class SessionTypesController < ApplicationController
  # GET /session_types
  # GET /session_types.xml
  def index
    @session_types = SessionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @session_types }
    end
  end

  # GET /session_types/1
  # GET /session_types/1.xml
  def show
    @session_type = SessionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @session_type }
    end
  end

  # GET /session_types/new
  # GET /session_types/new.xml
  def new
    @session_type = SessionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @session_type }
    end
  end

  # GET /session_types/1/edit
  def edit
    @session_type = SessionType.find(params[:id])
  end

  # POST /session_types
  # POST /session_types.xml
  def create
    @session_type = SessionType.new(params[:session_type])

    respond_to do |format|
      if @session_type.save
        flash[:notice] = 'SessionType was successfully created.'
        format.html { redirect_to(@session_type) }
        format.xml  { render :xml => @session_type, :status => :created, :location => @session_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @session_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /session_types/1
  # PUT /session_types/1.xml
  def update
    @session_type = SessionType.find(params[:id])

    respond_to do |format|
      if @session_type.update_attributes(params[:session_type])
        flash[:notice] = 'SessionType was successfully updated.'
        format.html { redirect_to(@session_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @session_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /session_types/1
  # DELETE /session_types/1.xml
  def destroy
    @session_type = SessionType.find(params[:id])
    @session_type.destroy

    respond_to do |format|
      format.html { redirect_to(session_types_url) }
      format.xml  { head :ok }
    end
  end
end