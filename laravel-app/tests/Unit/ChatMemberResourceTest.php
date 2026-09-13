<?php

namespace Tests\Unit;

use PHPUnit\Framework\Attributes\TestDox;
use Tests\TestCase;

class ChatMemberResourceTest extends TestCase
{
    #[TestDox('Chat member resource class is autoloadable')]
    public function test_chat_member_resource_is_autoloadable(): void
    {
        $this->assertTrue(class_exists('App\\Http\\Resources\\Chat\\ChatMemberResource'));
    }
}
