module Polivalente
  class Trash < ActiveRecord::Base
    include Sortable
    include UserOwned

    belongs_to :trashable, polymorphic: true

    after_create :schedule_deletion

    self.table_name = :trash

    # Stale records are those that have been in the trash for `T` amount of time
    scope :stale, -> { where("created_at <= ?", Time.zone.now - Polivalente.config.trash_ttl) }

    def self.clean_stale!
      stale.destroy_all
    end

    def self.clean!
      destroy_all
    end

    protected

    # Schedule the deletion of this and parent record
    def schedule_deletion
      CleanTrashJob
        .set(wait_until: Polivalente.config.trash_ttl.from_now)
        .perform_later(self)
    end
  end
end
