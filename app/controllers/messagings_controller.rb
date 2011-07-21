class MessagingsController < ApplicationController
  # GET /messagings
  # GET /messagings.xml
  def index
    @messagings = Messaging.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @messagings }
    end
  end

  # GET /messagings/1
  # GET /messagings/1.xml
  def show
    @messaging = Messaging.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @messaging }
    end
  end

  # GET /messagings/new
  # GET /messagings/new.xml
  def new
    @messaging = Messaging.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @messaging }
    end
  end

  # GET /messagings/1/edit
  def edit
    @messaging = Messaging.find(params[:id])
  end

  # POST /messagings
  # POST /messagings.xml
  def create
    @messaging = Messaging.new(:hash => params['session'].to_json)
    @message = params['session']['initialText']

    respond_to do |format|
      if @messaging.save
        format.html { redirect_to(@messaging, :notice => 'Messaging was successfully created.') }
        format.xml  { render :xml => @messaging, :status => :created, :location => @messaging }
        format.json { render :json => Tropo::Generator.say(translate_to_french(@message)) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @messaging.errors, :status => :unprocessable_entity }
        format.json { render :json => Tropo::Generator.say("Could not translate your message") }
      end
    end
  end

  # PUT /messagings/1
  # PUT /messagings/1.xml
  def update
    @messaging = Messaging.find(params[:id])

    respond_to do |format|
      if @messaging.update_attributes(params[:messaging])
        format.html { redirect_to(@messaging, :notice => 'Messaging was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @messaging.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /messagings/1
  # DELETE /messagings/1.xml
  def destroy
    @messaging = Messaging.find(params[:id])
    @messaging.destroy

    respond_to do |format|
      format.html { redirect_to(messagings_url) }
      format.xml  { head :ok }
    end
  end
end
