class ContactsController < ApplicationController
  def create
    contact = Contact.create!(
      firstName: params[:firstName],
      lastName: params[:lastName],
      email: params[:email],
    )
    render json: contact.as_json
  end

  def update
    contact = Contact.find_by(id: params[:id])
    contact.update(
      firstName: params[:firstName] || contact.firstName,
      lastName: params[:lastName] || contact.lastName,
      email: params[:email] || contact.email,
    )
    render json: contact.as_json
  end
end
