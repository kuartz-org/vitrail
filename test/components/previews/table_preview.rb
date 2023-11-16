# frozen_string_literal: true

class TablePreview < ViewComponent::Preview
  def standard
    render_with_template(locals: { users: })
  end

  # Table with link on each row
  # ----------------
  # Usage:
  # ```ruby
  # table.with_row(link_to: your_path_helper) do |row|
  # ```
  def with_link
    render_with_template(locals: { users: })
  end

  # Table with custom attributes
  # ----------------
  # You can pass custom attributes to the component, the rows and the
  # divisions.
  #
  # Additionally, you can pass a `td: {}` parameter to `#with_row` to add
  # attributes to all the divisions without having to pass them to each.
  #
  # In this example:
  #
  # `id` and `data-controller` to the component:
  # ```ruby
  # Vitrail::Table.new(id: "users", data: { controller: "table" })
  # ```
  #
  # Custom class to one header and its corresponding division:
  # ```ruby
  # table.with_header(class: "text-right")
  # # [...]
  # row.with_division(class: "text-right")
  # ```
  #
  # `data-table-target` to all the divisions:
  # ```ruby
  # table.with_row(td: { data: { table_target: "division" } })
  # ```
  def with_custom_attributes
    render_with_template(locals: { users: })
  end

  private

  def users
    @users ||= [
      OpenStruct.new(id: 1, name: "Alice", email: "alice@example.com"),
      OpenStruct.new(id: 2, name: "Bob", email: "bob@example.com"),
      OpenStruct.new(id: 3, name: "Charlie", email: "charlie@example.com"),
    ]
  end
end
