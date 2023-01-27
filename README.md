rspec matcher that tells you how many queries your code you executed

use like

expect { test }.to have_query_count(count)