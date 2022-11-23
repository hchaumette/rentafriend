import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    console.log("hello")
    var coolDates = [Date.parse('2022-12-1'), Date.parse('2022-12-5')];

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




var coolDates = [Date.parse('2016-12-1'), Date.parse('2016-12-5')];

flatpickr('.flatpickr', {
    onDayCreate: function(dObj, dStr, fp, dayElem) {
        // Checking to see if the current day object is in our array
       // The `+` is just a shortcut for parsing the date
        if (coolDates.indexOf(+dayElem.dateObj) !== -1) {
          dayElem.className += " cool-date";
        }
    }
});
