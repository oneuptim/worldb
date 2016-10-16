json.partial! 'states/state', state: @resource
json.cities @resource.cities.map { |c| c['name'] }
