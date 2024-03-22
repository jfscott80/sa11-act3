def parse_invoices(invoice_data)
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
# Expected Output:
# Date: 2023-03-01, Invoice Number: INV001, Client: Acme Corp, Amount: $1000
# Date: 2023-03-02, Invoice Number: INV002, Client: Beta LLC, Amount: $2050
# Date: 2023-03-03, Invoice Number: INV003, Client: Gamma Inc, Amount: $3500
