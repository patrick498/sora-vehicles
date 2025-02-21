import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["form"]
  connect() {
    this.debounceTimeout = null
    document.addEventListener("slider:change", this.search.bind(this))
  }

  search() {
    clearTimeout(this.debounceTimeout)
    this.debounceTimeout = setTimeout(() => {
      this.formTarget.requestSubmit() // Triggers Turbo form submission
    }, 300) // Adjust debounce delay if needed
  }
}
