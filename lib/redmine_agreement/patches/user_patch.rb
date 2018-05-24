module RedmineAgreement
  module UserPatch
    def self.included(base) # :nodoc:
      base.class_eval do
        unloadable

        def accept_agreement?
          not self.accept_agreement_at.nil?
        end

      end
    end

  end
end
User.send(:include, RedmineAgreement::UserPatch)
