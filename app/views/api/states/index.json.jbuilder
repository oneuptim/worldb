json.states @collection do |element|
  json.partial! 'states/state', state: element
end
