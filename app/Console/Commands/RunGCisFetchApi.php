<?php

namespace App\Console\Commands;

use App\Jobs\ApiGCIsFetchJob;
use Illuminate\Console\Command;

class RunGCisFetchApi extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:apigc';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Update GC Is Fetch';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        ApiGCIsFetchJob::dispatch();

        return 0;
    }
}
