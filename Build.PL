#!/usr/bin/perl -w
# @(#) $Id: Build.PL 894 2005-09-22 12:13:04Z dom $

use strict;
use Module::Build;

Module::Build->new(
    dist_name          => 'subatom',
    dist_version_from  => 'bin/subatom',
    license            => 'bsd',
    create_makefile_pl => 'passthrough',
    script_files       => ['bin/subatom'],
    requires           => { 'XML::Atom' => 0 },
    add_to_cleanup     => ['subatom-*'],
)->create_build_script;