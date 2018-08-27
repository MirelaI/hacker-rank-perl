use feature qw(say);

sub count_words {
    my $filename = shift;
    my $word = shift;
    my $count = 0;

    return "No filename argument provided"
        if (!$filename);

    return "No word argument provided"
        if (!$word);

    open(my $fh, $filename);

    while (my $line = <$fh>) {
        chomp($line);
        $count += () = $line =~ /\b$word\b/g;
    }

    return $count;
}

my $input_filename = $ARGV[0];
my $input_word = $ARGV[1];
my $total_count = count_words($input_filename, $input_word);
say($total_count);

