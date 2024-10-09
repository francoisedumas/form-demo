# frozen_string_literal: true

SimpleForm.setup do |config|
  config.wrappers :default, class: "form-group",
                            hint_class: :field_with_hint, error_class: :field_with_errors,
                            valid_class: :field_without_errors do |b|
    b.use :html5
    b.use :placeholder, class: "text-gray-300"
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

  config.wrappers :password_wrapper, class: "form-group",
                                     hint_class: :field_with_hint, error_class: :field_with_errors,
                                     valid_class: :field_without_errors do |b|
    b.use :html5
    b.use :placeholder, class: "text-gray-300"
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: "form-label", error_class: "text-red-500"
    b.wrapper tag: "div", class: "mt-2 flex items-center justify-center",
              html: { "data-controller": "password-visibility" } do |bb|
      bb.use :input, class: "form-input", error_class: "is-invalid"
    end
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
    b.use :error, wrap_with: { tag: :span, class: :error }
  end

  # vertical input for boolean
  config.wrappers :vertical_boolean, class: "form-boolean" do |b|
    b.use :html5
    b.optional :readonly
    b.wrapper tag: "div", class: "boolean-wrapper-checkbox" do |bb|
      bb.use :input, class: "boolean-input"
    end
    b.wrapper tag: "div", class: "boolean-wrapper-label" do |bb|
      bb.use :label, class: "form-label", error_class: "text-red-500"
      bb.use :hint,  wrap_with: { tag: :span, class: :hint }
      bb.use :error, wrap_with: { tag: :span, class: :error }
    end
  end

  # Custom wrappers for input types. This should be a hash containing an input
  # type as key and the wrapper that will be used for all inputs with specified type.
  config.wrapper_mappings = {
    boolean: :vertical_boolean,
    password: :password_wrapper
  }

  config.default_wrapper = :default
  config.boolean_style = :nested
  config.button_class = "btn btn-primary"
  config.error_notification_tag = :div
  config.error_notification_class = "error_notification"
  config.browser_validations = false
  config.boolean_label_class = "checkbox"
  # How the label text should be generated altogether with the required text.
  config.label_text = -> (label, required, _explicit_label) { "#{label} #{required}" }
end
