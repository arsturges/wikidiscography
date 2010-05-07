class SongFormsController < ApplicationController
  # GET /song_forms
  # GET /song_forms.xml
  def index
    @song_forms = SongForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @song_forms }
    end
  end

  # GET /song_forms/1
  # GET /song_forms/1.xml
  def show
    @song_form = SongForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @song_form }
    end
  end

  # GET /song_forms/new
  # GET /song_forms/new.xml
  def new
    @song_form = SongForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @song_form }
    end
  end

  # GET /song_forms/1/edit
  def edit
    @song_form = SongForm.find(params[:id])
  end

  # POST /song_forms
  # POST /song_forms.xml
  def create
    @song_form = SongForm.new(params[:song_form])

    respond_to do |format|
      if @song_form.save
        flash[:notice] = 'SongForm was successfully created.'
        format.html { redirect_to(@song_form) }
        format.xml  { render :xml => @song_form, :status => :created, :location => @song_form }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @song_form.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /song_forms/1
  # PUT /song_forms/1.xml
  def update
    @song_form = SongForm.find(params[:id])

    respond_to do |format|
      if @song_form.update_attributes(params[:song_form])
        flash[:notice] = 'SongForm was successfully updated.'
        format.html { redirect_to(@song_form) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @song_form.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /song_forms/1
  # DELETE /song_forms/1.xml
  def destroy
    @song_form = SongForm.find(params[:id])
    @song_form.destroy

    respond_to do |format|
      format.html { redirect_to(song_forms_url) }
      format.xml  { head :ok }
    end
  end
end
