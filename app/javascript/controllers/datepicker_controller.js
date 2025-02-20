import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    const bookedDates = JSON.parse(this.element.dataset.bookedDates || "[]");

    flatpickr(this.element, {
      dateFormat: "F j, Y",
      minDate: 'today',
      disable: bookedDates.map(range => ({ from: range.from, to: range.to }))
    }
    )
  }
}
