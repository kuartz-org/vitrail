module Vitrail
  module Helper
    def vt_link_to(*args, &block) = render(Vitrail::LinkTo::Component.new(*args), &block)
    def vt_button_tag(*args, &block) = render(Vitrail::ButtonTag::Component.new(*args), &block)
    def vt_card(*args, &block) = render(Vitrail::Card::Component.new(*args), &block)
    def vt_title(*args, &block) = render(Vitrail::Title::Component.new(*args), &block)
    def vt_table(*args, &block) = render(Vitrail::Table::Component.new(*args), &block)
  end
end
