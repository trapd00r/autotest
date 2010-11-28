use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'autotest',
    AUTHOR              => q{Magnus Woldrich <magnus@trapd00r.se>},
    VERSION_FROM        => 'autotest',
    ABSTRACT_FROM       => 'autotest',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    EXE_FILES           => ['autotest'],
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'autotest-*' },
);
