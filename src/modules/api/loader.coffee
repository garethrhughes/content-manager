module.exports = (apiVersion) ->
  try
    return require "./version/#{apiVersion}"
  catch error
    return false