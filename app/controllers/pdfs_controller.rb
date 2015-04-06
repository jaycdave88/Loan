class PdfsController < ApplicationController
  before_action :set_pdf, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /pdfs
  # GET /pdfs.json

  def index
    @user = current_user if current_user
    @pdfs = current_user.pdfs 
  end

  # GET /pdfs/1
  # GET /pdfs/1.json
  def show
    if current_user.id == @pdf.user_id
      render :show
    else
      redirect_to root_path
    end
  end

  # GET /pdfs/new
  def new
    @pdf = Pdf.new
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js
    end
  end

  # GET /pdfs/1/edit
  def edit
  end

  # POST /pdfs
  # POST /pdfs.json
  
  def create
    @pdf = Pdf.new(pdf_params)
    LoanMailer.registration_confirmation(current_user).deliver_now
    @pdf.user_id = current_user.id if current_user
    if @pdf.save
      flash[:notice] = "Loan created successfully"
      redirect_to pdfs_path
    else
      render :new
    end
  end

  # PATCH/PUT /pdfs/1
  # PATCH/PUT /pdfs/1.json
  def update
    respond_to do |format|
      if @pdf.update(pdf_params)
        format.html { redirect_to @pdf, notice: 'Loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @pdf }
      else
        format.html { render :edit }
        format.json { render json: @pdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pdfs/1
  # DELETE /pdfs/1.json
  def destroy
    @pdf.destroy
    respond_to do |format|
      format.html { redirect_to pdfs_url, notice: 'Loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pdf
      @pdf = Pdf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pdf_params
      params.require(:pdf).permit(:photo, :name, :notes, :loan_ammount, :down_payment, :intrest_rate)
    end
  end
