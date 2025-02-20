import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["userBookings", "ownerBookings"];

  toggle() {
    const showOwner = this.element.querySelector("#bookingToggle").checked;
    this.userBookingsTarget.style.display = showOwner ? "none" : "block";
    this.ownerBookingsTarget.style.display = showOwner ? "block" : "none";
  }
}
