#!/usr/bin/perl -w
# @(#) $Id: Build.PL 1175 2006-06-05 22:04:32Z dom $

use strict;
use Module::Build;

Module::Build->new(
    dist_name          => 'subatom',
    dist_version_from  => 'bin/subatom',
    license            => 'bsd',
    create_makefile_pl => 'passthrough',
    script_files       => ['bin/subatom'],
    requires           => { 'XML::Atom::SimpleFeed' => 0.8 },
    add_to_cleanup     => ['subatom-*'],
)->create_build_script;
