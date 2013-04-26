
$Test::Class::TREF::IMAP::VERSION = '0.0000.000001'; #vvery vvery beta
use lib qw( C:\johns\Dropbox\Code_Base\CPAN\Test-Class-Rig\lib );
#use lib 'C:\Users\John Scoles\Dropbox\Code_Base\CPAN\Test-Class-Rig\lib';
#           C:\Users\John Scoles\Dropbox\Code_Base\CPAN\Test-Class-Rig\lib\Test\Class);
{ package
  Test::Class::TREF::IMAP;
  use Test::Class::Rig();
  use Net::IMAP;
  use Exporter();
  @ISA = qw(Exporter IMAP);
  use Data::Dumper;
  $trecrh = undef;	# holds client handle once initialized
  sub email_file_system {
    return $trecrh if $trefrh;
    my($class, $attr) = @_;
    $class .= "::trec";
    # not a 'my' since we use it above to prevent multiple clients
    #warn("end here agent $class");
    $trecrh = Test::Class::Rig::_new_trefrh($class,"Net::IMAP", {
        'Name' => 'IMAPe',
        'Version' => $VERSION,
        'Err'    => \my $err,
        'Errstr' => \my $errstr,
        'Attribution' => "TREF::IMAP $VERSION using Test::Class::Rig by John Scoles",
        });
    return $trecrh;
}
{ package
  Test::Class::TREF::IMAP::tref;
  use strict;
  sub ping {
    warn("this is tra ping 'Test::Class::TREF::IMAP::tref'\n")
  }
} # Test::Class::TREF::IMAP::tref
} # Test::Class::TREF::IMAP;
1;
__END__
