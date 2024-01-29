class Account < ApplicationRecord
    enum :currency, { '€': 'eur', 'R$': 'brl' }
    has_many :movements, class_name: "movement", foreign_key: "account_id"

    def balance_by_account:
        return Account.joins(:movements)
end
