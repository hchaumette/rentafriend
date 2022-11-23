import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="category-activity"
export default class extends Controller {
  static targets = ["input"]
  connect() {

  }
  select_category(event){
    this.inputTarget.value = event.currentTarget.innerHTML;

    const parent = event.currentTarget.parentNode;
    parent.childNodes.forEach((element) => {
      if (!(element.classList === undefined)){
        console.log(element)
        element.classList.remove("card_category_select")
      }
    });

    event.currentTarget.classList.add("card_category_select");
  }
}
