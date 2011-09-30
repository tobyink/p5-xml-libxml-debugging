use strict;
use warnings;

use inc::Module::Install;

my $dist = 'XML-LibXML-Debugging';
my $fn   = "lib/$dist.pm"; $fn =~ s#-#/#g;

name                $dist;
perl_version_from   $fn;
version_from        $fn;
abstract_from       $fn;
readme_from         $fn;
author              'Toby Inkster <tobyink@cpan.org>';
license             'perl';

requires            'HTML::Entities'    => '3.27';
test_requires       'Test::More'        => '0.61';
requires            'XML::LibXML'       => 0;

resources(
	'homepage'   => "https://metacpan.org/release/$dist",
	'repository' => "http://goddamn.co.uk/svn-web/perlmods/browse/$dist/",
	'bugtracker' => "http://rt.cpan.org/Dist/Display.html?Queue=$dist",
	);
	
write_doap_changes;
write_doap_changes_xml;
auto_license;
auto_manifest;

auto_install;
WriteAll(
	'meta' => 1,
	'sign' => 1,
	);
