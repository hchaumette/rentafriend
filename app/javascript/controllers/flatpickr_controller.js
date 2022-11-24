import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    console.log("hello")
    let coolDates = [Date.parse('2022-11-19'), Date.parse('2022-11-25')];

      flatpickr(this.element, {
        inline: true,
        onDayCreate: function(dObj, dStr, fp, dayElem) {
          // Checking to see if the current day object is in our array
         // The `+` is just a shortcut for parsing the date
         console.log(coolDates.indexOf(+dayElem.dateObj))

          if (coolDates.indexOf(+dayElem.dateObj) !== -1) {
            dayElem.className += " cool-date";
          }
        }
      });
  }

}
