# frozen_string_literal: true

FactoryBot.define do
  factory :organisation do
    name { 'Some organisation' }
    abbreviation { 'SORG' }
    contact_person { FFaker::Name.name }
    contact_person_email { FFaker::Internet.email }
    contact_person_phone { "+420#{rand(111111111...999999999)}" }
  end
end
