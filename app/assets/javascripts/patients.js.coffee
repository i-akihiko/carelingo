# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  $(".hood_selection_entry a").click ->
    if this.getAttribute("class").indexOf("adult") == -1
      $('.age_selection_entry').css("display", "block")
      $('.child').addClass("hood_selected")
      $('.adult').removeClass("hood_selected")
    else
      $('.age_selection_entry').css("display", "none")
      $('.child').removeClass("hood_selected")
      $('.adult').addClass("hood_selected")

  $(".pain_slider").change ->
    $(".pain_value").text(this.value)
    if parseInt(this.value) == 10
      $(".warning_entry").css("display", "block");
    else
      $(".warning_entry").css("display", "none");

  $(".patient_entry_button_bottom").click ->
#    language_id = $("#selection_language")[0].value
#    location_id = $("#selection_location")[0].value
#    symptom_id = $("#selection_symptom")[0].value
    is_adult = $(".top_selection_value").children("a:last-child").hasClass("hood_selected")
    if !is_adult
        age = $(".patient_input_age").val()
    pain = $(".pain_slider").val()
    # feel_like_ids
    feel_like_ids = []
    max = $(".patient_entry_selection").children().length
    for i in [0..max]
        elem = "input#" + i.toString()
        if ($(elem).is(':checked') == true)
          feel_like_ids.push($(elem).attr("id"))

    obj = {
      "is_adult" : is_adult,
      "age" : age,
      "feel_like_ids" : feel_like_ids,
      "pain" : pain
    }
    params = $.param(obj)
    locale = get_locale_param()
    location.href = "/#{locale}" + "/medicines/list?" + params

# Helper

get_locale_param = () ->
  dirs = window.location.href.split("/")
  return dirs[dirs.length - 3]
