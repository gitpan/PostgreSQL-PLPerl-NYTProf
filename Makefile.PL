
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'PostgreSQL::PLPerl::NYTProf',
                       'DISTNAME' => 'PostgreSQL-PLPerl-NYTProf',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Tim Bunce <Tim.Bunce@pobox.com>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Profile execution of PostgreSQL PL/Perl code with Devel::NYTProf',
                       'EXE_FILES' => [],
                       'VERSION' => '1.001',
                       'PREREQ_PM' => {
                                        'PostgreSQL::PLPerl::Injector' => '1.001',
                                        'Devel::NYTProf::Core' => '0.1',
                                        'Sub::Name' => '0.04'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



