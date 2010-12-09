#!/usr/bin/perl
$|=1;
my $line;
while ($line = <STDIN>) {
    if ($line =~ m,^http://[a-z0-9]+\.tor2web\.com,) {
        $line =~ s,(http://[a-z0-9]+\.)tor2web\.com,$1onion,;
    } else {
        $line = "http://tor2web.com/invalid\n";
    }
    print $line;
}
