class JournalController < ApplicationController
	before_action :set_journal, only: [:show, :update, :destroy]

  # GET /journal
  def index
    @journal = Journal.all
    json_response(@journal)
  end

  # POST /journal
  def create
    @journal = Journal.create!(journal_params)
    json_response(@journal, :created)
  end

  # PUT /journal/:id
  def update
    @journal.update(journal_params)
    head :no_content
  end

  # DELETE /journal/:id
  def destroy
    @journal.destroy
    head :no_content
  end

  private

  def journal_params
    # whitelist params
    params.permit(:title, :author)
  end

  def set_journal
    @journal = Journal.find(params[:id])
  end
end
