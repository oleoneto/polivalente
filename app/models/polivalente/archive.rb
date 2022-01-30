module Polivalente
  class Archive < ApplicationRecord
    include Sortable
    include UserOwned

    belongs_to :archivable, polymorphic: true

    after_destroy :destroy_parent!

    protected

    def destroy_parent!
      archivable.destroy
    end

    def self.clean!
      destroy_all
    end
  end
end
