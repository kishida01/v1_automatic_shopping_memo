class SessionsController < ApplicationController
    def new; end

    def create
      @user = login(params[:session][:email], params[:session][:password])
      if @user
        redirect_to root_path, notice: "ログインしました"
      else
        flash.now[:alert] = "ログインに失敗しました"
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      if logged_in?
        logout
        flash[:success] = "ログアウトしました。"
      else
        flash[:danger] = "既にログアウトしています。"
      end
      redirect_to root_path, status: :see_other
    end
end
