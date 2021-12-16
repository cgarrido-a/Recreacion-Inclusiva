# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
  $('.review-rating').raty
    path: '/assets',
    readOnly: true,
    score: ->
      $(this).attr('data-score')
 $('.review-rating').raty('reload')
