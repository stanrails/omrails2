class DiscipleshipClassesController < ApplicationController
  before_action :set_discipleship_class, only: [:show, :edit, :update, :destroy]

  # GET /discipleship_classes
  # GET /discipleship_classes.json
  def index
    @discipleship_classes = DiscipleshipClass.all
  end

  # GET /discipleship_classes/1
  # GET /discipleship_classes/1.json
  def show
  end

  # GET /discipleship_classes/new
  def new
    @discipleship_class = DiscipleshipClass.new
  end

  # GET /discipleship_classes/1/edit
  def edit
  end

  # POST /discipleship_classes
  # POST /discipleship_classes.json
  def create
    @discipleship_class = DiscipleshipClass.new(discipleship_class_params)

    respond_to do |format|
      if @discipleship_class.save
        format.html { redirect_to @discipleship_class, notice: 'Discipleship class was successfully created.' }
        format.json { render :show, status: :created, location: @discipleship_class }
      else
        format.html { render :new }
        format.json { render json: @discipleship_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discipleship_classes/1
  # PATCH/PUT /discipleship_classes/1.json
  def update
    respond_to do |format|
      if @discipleship_class.update(discipleship_class_params)
        format.html { redirect_to @discipleship_class, notice: 'Discipleship class was successfully updated.' }
        format.json { render :show, status: :ok, location: @discipleship_class }
      else
        format.html { render :edit }
        format.json { render json: @discipleship_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discipleship_classes/1
  # DELETE /discipleship_classes/1.json
  def destroy
    @discipleship_class.destroy
    respond_to do |format|
      format.html { redirect_to discipleship_classes_url, notice: 'Discipleship class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discipleship_class
      @discipleship_class = DiscipleshipClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discipleship_class_params
      params.require(:discipleship_class).permit(:class_date, :title, :user_id)
    end
end
