<?php

return \StubsGenerator\Finder::create()
    ->in('source/rtMedia')
    ->exclude('tests')
    ->exclude('lib')
    ->exclude('bin')
    ->sortByName()
;
