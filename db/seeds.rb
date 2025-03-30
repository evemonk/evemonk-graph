# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

alliance_id = 99005338
corporation_id = 98558506

esi = EveOnline::ESI::Alliance.new(alliance_id: alliance_id)

eve_alliance = Eve::Alliance.find_or_initialize_by(id: alliance_id)

eve_alliance.update!(esi.as_json)

esi = EveOnline::ESI::Corporation.new(corporation_id: corporation_id)

eve_corporation = Eve::Corporation.find_or_initialize_by(id: corporation_id)

eve_corporation.update!(esi.as_json)
