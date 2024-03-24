def parse_invoices(invoice_data)

    pattern = /(?<Date: >\d{4}-\d{2}-\d{2})( - )(?<Invoice: : >INV\S+)( - )(?<Client: >\S+\s\S+)( - )(?<Amount: >\$.*)/

    match = invoice_data.scan(pattern)
    match.each do | line |
        line.each do 

            $date = line[0]
            $invoice = line[1]
            $client = line[2]
            $amount = line[3]

        end
        puts "Date: %s Invoice: %s Client: %s Amount: %s" % [$date, $invoice, $client, $amount] #% [invoice] % [client] % [amount]

    end

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
