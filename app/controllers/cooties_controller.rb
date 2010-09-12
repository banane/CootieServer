class CootiesController < ApplicationController
  # GET /cooties
  # GET /cooties.xml
  def index
    @cooties = Cootie.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cooties }
    end
  end

  # GET /cooties/1
  # GET /cooties/1.xml
  def show
    @cootie = Cootie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cootie }
    end
  end

  # GET /cooties/new
  # GET /cooties/new.xml
  def new
    @cootie = Cootie.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cootie }
    end
  end

  # GET /cooties/1/edit
  def edit
    @cootie = Cootie.find(params[:id])
  end

  # POST /cooties
  # POST /cooties.xml
  def create
    @cootie = Cootie.new(params[:cootie])

    respond_to do |format|
      if @cootie.save
        flash[:notice] = 'Cootie was successfully created.'
        format.html { redirect_to(@cootie) }
        format.xml  { render :xml => @cootie, :status => :created, :location => @cootie }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cootie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cooties/1
  # PUT /cooties/1.xml
  def update
    @cootie = Cootie.find(params[:id])

    respond_to do |format|
      if @cootie.update_attributes(params[:cootie])
        flash[:notice] = 'Cootie was successfully updated.'
        format.html { redirect_to(@cootie) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cootie.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cooties/1
  # DELETE /cooties/1.xml
  def destroy
    @cootie = Cootie.find(params[:id])
    @cootie.destroy

    respond_to do |format|
      format.html { redirect_to(cooties_url) }
      format.xml  { head :ok }
    end
  end
end
