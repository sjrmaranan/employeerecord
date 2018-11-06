class EmpRecordsController < ApplicationController
  before_action :set_emp_record, only: [:show, :edit, :update, :destroy]

  # GET /emp_records
  # GET /emp_records.json
  def index
    @emp_records = EmpRecord.all
  end

  # GET /emp_records/1
  # GET /emp_records/1.json
  def show
  end

  # GET /emp_records/new
  def new
    @emp_record = EmpRecord.new
  end

  # GET /emp_records/1/edit
  def edit
  end

  # POST /emp_records
  # POST /emp_records.json
  def create
    @emp_record = EmpRecord.new(emp_record_params)

    respond_to do |format|
      if @emp_record.save
        format.html { redirect_to @emp_record, notice: 'Emp record was successfully created.' }
        format.json { render :show, status: :created, location: @emp_record }
      else
        format.html { render :new }
        format.json { render json: @emp_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emp_records/1
  # PATCH/PUT /emp_records/1.json
  def update
    respond_to do |format|
      if @emp_record.update(emp_record_params)
        format.html { redirect_to @emp_record, notice: 'Emp record was successfully updated.' }
        format.json { render :show, status: :ok, location: @emp_record }
      else
        format.html { render :edit }
        format.json { render json: @emp_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emp_records/1
  # DELETE /emp_records/1.json
  def destroy
    @emp_record.destroy
    respond_to do |format|
      format.html { redirect_to emp_records_url, notice: 'Emp record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emp_record
      @emp_record = EmpRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emp_record_params
      params.require(:emp_record).permit(:firstname, :middlename, :lastname, :address, :mobile, :landline, :email, :unit, :idnumber, :tin, :designation, :additionalinfo)
    end
end
