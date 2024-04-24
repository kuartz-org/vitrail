module Vitrail
  module Helper
    def vt_title(...)
      render(Vitrail::Title.new(...), &)
    end

    def vt_link_to(...)
      render(Vitrail::LinkTo.new(...), &)
    end

    def vt_card(...)
      render(Vitrail::Card.new(...), &)
    end

    def vt_table(...)
      render(Vitrail::Table.new(...), &)
    end
  end
end
