class MemberController < ApplicationController
  def register_index
    render 'member/register'
  end
  def register
    @member = Member.new({"fsuid" => params[:fsuid], "wallet_address" => params[:wallet_address]})
    if @member.save
      redirect_to '/'
    else
      redirect_to '/member/register'
    end
  end

end
