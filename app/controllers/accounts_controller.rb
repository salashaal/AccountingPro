class AccountsController < ApplicationController
  before_filter :set_account, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @account_types = [["Asset", "Asset"], ["Liability", "Liability"], ["Expense", "Expense"], ["Capital", "Capital"]]
    @allAccounts = Account.all
    @asset = 0
    @expense = 0
    @liability = 0
    

    
    if (params[:account_type] == nil or params[:account_type] == "")
      @accounts = Account.all
    elsif
      @accounts = Account.find_all_by_accounttype(params[:account_type])
      @selected = params[:account_type]
    end

   @allAccounts.each do |account|
      if (account.accounttype == "Asset")
        @asset += account.amount.to_i
      elsif (account.accounttype == "Expense")
        @expense += account.amount.to_i
      elsif (account.accounttype == "Liability")
        @liability += account.amount.to_i
      end
      end

    @equity=@asset-@liability
    respond_with(@accounts, @equity)
  end

  def show
    respond_with(@account)
  end

  def log
    @transactions = Transaction.where("'first_account_id' = ? OR 'second_account_id' = ?", params['id'], params['id'])
    if (@transactions != nil)
      @transactions.order("updated_at")
    end
  end

  def new
    @account_types = [["Asset", "Asset"], ["Liability", "Liability"], ["Expense", "Expense"]]
    @account = Account.new
    respond_with(@account)
  end

  def edit
    @account_types = [["Asset", "Asset"], ["Liability", "Liability"], ["Expense", "Expense"], ["Capital", "Capital"]]
    @account = Account.find_by_id(params[:id])
  end

  def create
    @account = Account.new(params[:account])
    @account.save
    flash[:notice] = "#{@account.name} was successfully created."
    redirect_to accounts_path
  end

  def update
    @account.update_attributes(params[:account])
    respond_with(@account)
  end

  def destroy
    @account.destroy
    respond_with(@account)
  end

  private
    def set_account
      @account = Account.find(params[:id])
    end
end
