=name With if

=failures 6

=cut

my $foo = 1 if $bar;
local $foo = 1 if $bar;
our $foo = 1 if $bar;

my ($foo, $baz) = @list if $bar;
local ($foo, $baz) = @list if $bar;
our ($foo, $baz) = 1 if $bar;


#----------------------------------------------------------------

=name With unless

=failures 6

=cut

my $foo = 1 unless $bar;
local $foo = 1 unless $bar;
our $foo = 1 unless $bar;

my ($foo, $baz) = @list unless $bar;
local ($foo, $baz) = @list unless $bar;
our ($foo, $baz) = 1 unless $bar;


#----------------------------------------------------------------

=name With while

=failures 6

=cut

my $foo = 1 while $bar;
local $foo = 1 while $bar;
our $foo = 1 while $bar;

my ($foo, $baz) = @list while $bar;
local ($foo, $baz) = @list while $bar;
our ($foo, $baz) = 1 while $bar;

#----------------------------------------------------------------

=name With for

=failures 6

=cut

my $foo = 1 for @bar;
local $foo = 1 for @bar;
our $foo = 1 for @bar;

my ($foo, $baz) = @list for @bar;
local ($foo, $baz) = @list for @bar;
our ($foo, $baz) = 1 for @bar;

#----------------------------------------------------------------

=name With foreach

=failures 6

=cut

my $foo = 1 foreach @bar;
local $foo = 1 foreach @bar;
our $foo = 1 foreach @bar;

my ($foo, $baz) = @list foreach @bar;
local ($foo, $baz) = @list foreach @bar;
our ($foo, $baz) = 1 foreach @bar;

#----------------------------------------------------------------

=name Passing cases

=failures 0

=cut

for my $foo (@list) { do_something() }
foreach my $foo (@list) { do_something() }
while (my $foo $condition) { do_something() }
until (my $foo = $condition) { do_something() }
unless (my $foo = $condition) { do_something() }

# these are terrible uses of "if" but do not violate the policy
my $foo = $hash{if};
my $foo = $obj->if();