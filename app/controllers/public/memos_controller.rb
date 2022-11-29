class Public::MemosController < ApplicationController

  def index
    @memos = Memo.all
    @memo = Memo.new
  end

  def show

  end

  def create
    @memo = Memo.new(memo_params)
    @memo.save
    redirect_to request.referrer

  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to request.referrer
  end

  private

  def memo_params
    params.require(:memo).permit(:title,:content)
  end

end
