import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="flatpickr-activity"
export default class extends Controller {

  static targets = [ "date", "calendar" ]

  connect() {
    let element = this.dateTarget
    flatpickr(this.calendarTarget, {
      inline: true,
      onChange: function(selectedDates, dateStr, instance) {
        element.value = dateStr
    }

    })


  }
}
