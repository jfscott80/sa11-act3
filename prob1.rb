def extract_urls(text)
    pattern = //
    text.scan(pattern)
end

sample_text = "Visit our site at http://www.example.org for more
information. Check out our search page at
https://example.com/search?q=ruby+regex. Don’t forget to ftp our
resources at ftp://example.com/resources."

extract_urls(sample_text)
# Expected Output:
# http://www.example.org
# https://example.com/search?q=ruby+regex
# ftp://example.com/resources