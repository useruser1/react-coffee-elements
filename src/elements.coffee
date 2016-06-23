React = require 'react'

build = (tag) ->
  (options...) ->
    if options[0] and (React.isValidElement options[0] or options[0].constructor isnt Object)
      options.unshift {}
    React.DOM[tag].apply this, options

module.exports = (->
  object = {}
  for element in Object.keys(React.DOM)
    object[element] = build element
  object
)()
