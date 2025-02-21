import { Controller } from "@hotwired/stimulus"
import noUiSlider from "nouislider";

// Connects to data-controller="slider"
export default class extends Controller {
  static targets = ["minValue", "maxValue", "rangeSlider", "hiddenMinPrice", "hiddenMaxPrice"]
  static values = {
    min: Number,
    max: Number,
    currentMin: Number,
    currentMax: Number
  }
  connect() {
    noUiSlider.create(this.rangeSliderTarget, {
      start: [this.currentMinValue, this.currentMaxValue],
      connect: true,
      step: 1000,
      range: {
        'min': this.minValue,
        'max': this.maxValue
      },
    });

    const minValue = this.minValueTarget;
    const maxValue = this.maxValueTarget;
    const hiddenMin = this.hiddenMinPriceTarget;
    const hiddenMax = this.hiddenMaxPriceTarget;
    const controller = this.element;

    this.rangeSliderTarget.noUiSlider.on("update", function (values, handle) {
      minValue.innerHTML = Math.round(values[0]);
      maxValue.innerHTML = Math.round(values[1]);
      hiddenMin.value = Math.round(values[0]);
      hiddenMax.value = Math.round(values[1]);
      controller.dispatchEvent(new CustomEvent("slider:change", { bubbles: true }))
    })
  }

  disconnect() {
    if (this.rangeSliderTarget.noUiSlider) {
      this.rangeSliderTarget.noUiSlider.off("update", this.updateHandler); // Remove event listener
      this.rangeSliderTarget.noUiSlider.destroy(); // Destroy the slider
    }
  }
}
