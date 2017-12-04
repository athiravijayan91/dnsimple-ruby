class DomainRecord < ApplicationRecord
		RECORD_TYPES = ["A","ALIAS","CNAME","MX","SPF","URL","TXT","NS","SRV","NAPTR","PTR","AAAA","SSHFP","HINFO","POOL","CAA"].freeze

		validates :record_type, inclusion: { in: RECORD_TYPES }
end
