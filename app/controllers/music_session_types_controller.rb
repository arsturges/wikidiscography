class MusicSessionTypesController < ApplicationController
  # GET /music_session_types
  # GET /music_session_types.xml
  def index
    @music_session_types = MusicSessionType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @music_session_types }
    end
  end

  # GET /music_session_types/1
  # GET /music_session_types/1.xml
  def show
    @music_session_type = MusicSessionType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @music_session_type }
    end
  end

  # GET /music_session_types/new
  # GET /music_session_types/new.xml
  def new
    @music_session_type = MusicSessionType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @music_session_type }
    end
  end

  # GET /music_session_types/1/edit
  def edit
    @music_session_type = MusicSessionType.find(params[:id])
  end

  # POST /music_session_types
  # POST /music_session_types.xml
  def create
    @music_session_type = MusicSessionType.new(params[:music_session_type])

    respond_to do |format|
      if @music_session_type.save
        flash[:notice] = 'MusicSessionType was successfully created.'
        format.html { redirect_to(@music_session_type) }
        format.xml  { render :xml => @music_session_type, :status => :created, :location => @music_session_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @music_session_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /music_session_types/1
  # PUT /music_session_types/1.xml
  def update
    @music_session_type = MusicSessionType.find(params[:id])

    respond_to do |format|
      if @music_session_type.update_attributes(params[:music_session_type])
        flash[:notice] = 'MusicSessionType was successfully updated.'
        format.html { redirect_to(@music_session_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @music_session_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /music_session_types/1
  # DELETE /music_session_types/1.xml
  def destroy
    @music_session_type = MusicSessionType.find(params[:id])
    @music_session_type.destroy

    respond_to do |format|
      format.html { redirect_to(music_session_types_url) }
      format.xml  { head :ok }
    end
  end
end
