jade = require 'jade'
path = require 'path'
async = require 'async'

config = require '../../config'

mAccount = require '../../core/model/account'

module.exports =
  enable: (account, callback) ->
    callback()

  delete: (account, callback) ->
    callback()

  widget: (account, callback) ->
    jade.renderFile path.join(__dirname, 'view/widget.jade'), {}, (err, html) ->
      callback html

  preview: (callback) ->
    jade.renderFile path.join(__dirname, 'view/preview.jade'), {}, (err, html) ->
      callback html
