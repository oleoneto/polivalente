require 'rails_helper'

module Polivalente
  RSpec.describe ColorHelper, type: :helper do
    context "lighter color" do
      it "contrasts with black" do
        colors = [
          "FFFFFF", # white
          "E0CA3C", # citrine
          "F6F4F3", # cultured
          "FFD447", # mustard
        ]

        colors.each do |color|
          expect(helper.contrasting_color_for(color)).to eq("black")
        end
      end
    end

    context "darker color" do
      it "contrasts with white" do
        colors = [
          "000000", # black
          "8B0000", # dark red
          "0069FF", # bluetiful
          "00008B", # navy blue
          # "F34213", # coquelicot
          # "136F63", # ?
        ]

        colors.each do |color|
          expect(helper.contrasting_color_for(color)).to eq("white")
        end
      end

    end
  end
end
