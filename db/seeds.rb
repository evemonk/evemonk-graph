# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

alliance_ids = [99005338]
corporation_ids = [98558506, 98388312, 98500220]
character_ids = [1597785719]

alliance_ids.each do |alliance_id|
  esi = EveOnline::ESI::Alliance.new(alliance_id: alliance_id)

  eve_alliance = Eve::Alliance.find_or_initialize_by(id: alliance_id)

  eve_alliance.update!(esi.as_json)
end

corporation_ids.each do |corporation_id|
  esi = EveOnline::ESI::Corporation.new(corporation_id: corporation_id)

  eve_corporation = Eve::Corporation.find_or_initialize_by(id: corporation_id)

  eve_corporation.update!(esi.as_json)
end

character_ids.each do |character_id|
  # TODO: rename (character_id:) to (id:)
  esi = EveOnline::ESI::Character.new(character_id: character_id)

  eve_character = Eve::Character.find_or_initialize_by(id: character_id)

  eve_character.update!(esi.as_json)
end
