<?php

namespace App\Listeners;

use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Mail\Events\MessageSent;
use DB;

class LogSentMessage
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
        $json = json_encode($event);
        $decoded = json_decode($json);
        $id = $decoded->data->id;
        
        $gc_lists = DB::table('g_c_lists')->where('id', $id);

        $gc_lists->update([
            'email_is_sent' => 1,
        ]);
    }
}
