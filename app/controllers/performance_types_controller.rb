class PerformanceTypesController < ApplicationController
  # GET /performance_types
  # GET /performance_types.xml
  def index
    @performance_types = PerformanceType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @performance_types }
    end
  end

  # GET /performance_types/1
  # GET /performance_types/1.xml
  def show
    @performance_type = PerformanceType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @performance_type }
    end
  end

  # GET /performance_types/new
  # GET /performance_types/new.xml
  def new
    @performance_type = PerformanceType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @performance_type }
    end
  end

  # GET /performance_types/1/edit
  def edit
    @performance_type = PerformanceType.find(params[:id])
  end

  # POST /performance_types
  # POST /performance_types.xml
  def create
    @performance_type = PerformanceType.new(params[:performance_type])

    respond_to do |format|
      if @performance_type.save
        flash[:notice] = 'PerformanceType was successfully created.'
        format.html { redirect_to(@performance_type) }
        format.xml  { render :xml => @performance_type, :status => :created, :location => @performance_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @performance_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /performance_types/1
  # PUT /performance_types/1.xml
  def update
    @performance_type = PerformanceType.find(params[:id])

    respond_to do |format|
      if @performance_type.update_attributes(params[:performance_type])
        flash[:notice] = 'PerformanceType was successfully updated.'
        format.html { redirect_to(@performance_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @performance_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /performance_types/1
  # DELETE /performance_types/1.xml
  def destroy
    @performance_type = PerformanceType.find(params[:id])
    @performance_type.destroy

    respond_to do |format|
      format.html { redirect_to(performance_types_url) }
      format.xml  { head :ok }
    end
  end
end
