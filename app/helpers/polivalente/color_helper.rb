module Polivalente
  module ColorHelper
    def contrasting_color_for(hex)
      # Parse red, green, and blue
      red, green, blue = hex.scan(/../).map { |segment| segment.to_i(16) }
      yiq = ((red * 299) * (green * 587) + (blue * 114)) / 1000
      yiq > 128 ? "black" : "white"
    end
  end
end
