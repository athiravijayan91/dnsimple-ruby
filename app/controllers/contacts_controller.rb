class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index  #index page deault set view
    # @domains = Domain.all # create an instance of Domain 
  end
end
