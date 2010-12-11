class MusicSessionsController < ApplicationController
  # GET /music_sessions
  # GET /music_sessions.xml

  def index
    @music_sessions = MusicSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @music_sessions }
    end
  end

  # GET /music_sessions/1
  # GET /music_sessions/1.xml
  def show
    @music_session = MusicSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @music_session }
    end
  end

  # GET /music_sessions/new
  # GET /music_sessions/new.xml
  def new
    @music_session = MusicSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @music_session }
    end
  end

  # GET /music_sessions/1/edit
  def edit
    @music_session = MusicSession.find(params[:id])
  end

  # POST /music_sessions
  # POST /music_sessions.xml
  def create
    @music_session = MusicSession.new(params[:music_session])

    respond_to do |format|
      if @music_session.save
        flash[:notice] = 'MusicSession was successfully created.'
        format.html { redirect_to(@music_session) }
        format.xml  { render :xml => @music_session, :status => :created, :location => @music_session }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @music_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /music_sessions/1
  # PUT /music_sessions/1.xml
  def update
    @music_session = MusicSession.find(params[:id])

    respond_to do |format|
      if @music_session.update_attributes(params[:music_session])
        flash[:notice] = 'MusicSession was successfully updated.'
        format.html { redirect_to(@music_session) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @music_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /music_sessions/1
  # DELETE /music_sessions/1.xml
  def destroy
    @music_session = MusicSession.find(params[:id])
    @music_session.destroy

    respond_to do |format|
      format.html { redirect_to(music_sessions_url) }
      format.xml  { head :ok }
    end
  end
end
