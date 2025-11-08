<?php

namespace Test;

use App\Example;
use PHPUnit\Framework\TestCase;

final class ExampleTest extends TestCase
{
    public function testRun(): void
    {
        $example = new Example();

        $result = $example->run();

        $this->assertSame(1, $result);
    }
}
