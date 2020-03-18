# frozen_string_literal: true

ActiveAdmin.register Request do
  decorate_with RequestDecorator

  scope_to :current_user, association_method: :coordinator_organisation_requests, unless: -> { current_user.admin? }

  index do
    id_column
    column :text
    column :required_volunteer_count
    column :fullfilment_date
    column :coordinator
    column :state
    column :state_last_updated_at
  end
end
