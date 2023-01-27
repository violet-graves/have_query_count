rspec matcher that tells you how many queries your code executed

use like:
  spec file:
    expect { test }.to have_query_count(count)