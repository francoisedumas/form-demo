# frozen_string_literal: true

SimpleForm.setup do |config|
  config.wrappers :default, class: 'form-group',
    hint_class: :field_with_hint, error_class: :field_with_errors, valid_class: :field_without_errors do |b|
    b.use :html5
    b.use :placeholder, class: 'text-gray-300'
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: "form-label", error_class: "text-red-500"
    b.use :input, class: "form-input", error_class: "is-invalid"
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
    b.use :error, wrap_with: { tag: :span, class: :error }
  end

  config.default_wrapper = :default
  config.boolean_style = :nested
  config.button_class = 'btn btn-primary'
  config.error_notification_tag = :div
  config.error_notification_class = 'error_notification'
  config.browser_validations = false
  config.boolean_label_class = 'checkbox'
  # How the label text should be generated altogether with the required text.
  config.label_text = lambda { |label, required, explicit_label| "#{label} #{required}" }
end
