module ApplicationHelper
  def errors_for(form, field)
    tag.p(form.object.errors[field].try(:first), class: 'invalid-feedback')
  end

end
