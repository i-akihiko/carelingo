# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  $('.design-select-box').easySelectBox({speed: 200})

  selected_form_language = get_locale_param()
  if selected_form_language == "en"
    $(".form_language").prop('selectedIndex', 1)
  else if selected_form_language == "es"
    $(".form_language").prop('selectedIndex', 2)
  else if selected_form_language == "zh-CN"
    $(".form_language").prop('selectedIndex', 3)
  else
    $(".form_language").prop('selectedIndex', 0)

  $(".form_language").change ->
    if parseInt(this.value) == -1 # placeholder value
      return
    locale = this.value
    location.href = "/#{locale}" + "/symptoms/select"

  $(".esb-item").click ->
    $(".button_bottom").removeClass("disabled")

  $(".symptom_button_bottom").click ->
    language_id = $("#selection_language")[0].value
    location_id = $("#selection_location")[0].value
    symptom_id = $("#selection_symptom")[0].value
    obj = {
      "language" : language_id,
      "location" : location_id,
      "symptom" : symptom_id
    }
    params = $.param(obj)
    locale = get_locale_param()
    location.href = "/#{locale}" + "/patients/entry?" + params

# Helper

get_locale_param = () ->
  dirs = window.location.href.split("/")
  return dirs[dirs.length - 3]
