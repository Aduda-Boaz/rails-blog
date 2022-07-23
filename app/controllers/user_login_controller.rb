class UserLoginController < ApplicationController
  def index
    @login = Login.all
  end

  def show; end

  def new
    @login = Login.new
  end

  def edit; end

  def create
    @login = Login.new(login_params)

    respond_to do |format|
      if @login.save
        format.html { redirect_to @login, notice: 'Login was successfully created.' }
        format.json { render :show, status: :created, location: @login }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @login.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @login.update(login_params)
        format.html { redirect_to @login, notice: 'Login was successfully updated.' }
        format.json { render :show, status: :ok, location: @login }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @login.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @login.destroy
    respond_to do |format|
      format.html { redirect_to login_url, notice: 'Login was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_login
    params.fetch(:login, {})
  end
end
