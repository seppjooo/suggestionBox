class TopicLogsController < ApplicationController
  before_action :set_topic_log, only: [:show, :edit, :update, :destroy]

  # GET /topic_logs
  # GET /topic_logs.json
  def index
    @topic_logs = TopicLog.all
  end

  # GET /topic_logs/1
  # GET /topic_logs/1.json
  def show
  end

  # GET /topic_logs/new
  def new
    @topic_log = TopicLog.new
  end

  # GET /topic_logs/1/edit
  def edit
  end

  # POST /topic_logs
  # POST /topic_logs.json
  def create
    @topic_log = TopicLog.new(topic_log_params)

    respond_to do |format|
      if @topic_log.save
        format.html { redirect_to @topic_log, notice: 'Topic log was successfully created.' }
        format.json { render :show, status: :created, location: @topic_log }
      else
        format.html { render :new }
        format.json { render json: @topic_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topic_logs/1
  # PATCH/PUT /topic_logs/1.json
  def update
    respond_to do |format|
      if @topic_log.update(topic_log_params)
        format.html { redirect_to @topic_log, notice: 'Topic log was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic_log }
      else
        format.html { render :edit }
        format.json { render json: @topic_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topic_logs/1
  # DELETE /topic_logs/1.json
  def destroy
    @topic_log.destroy
    respond_to do |format|
      format.html { redirect_to topic_logs_url, notice: 'Topic log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic_log
      @topic_log = TopicLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_log_params
      params.require(:topic_log).permit(:person_id, :topic_id, :posted)
    end
end
