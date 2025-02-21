# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "nouislider", to:"nouislider.js"
pin "flatpickr" # @4.6.13
pin "@stimulus-components/lightbox", to: "@stimulus-components--lightbox.js" # @4.0.0
pin "lightgallery" # @2.8.2
