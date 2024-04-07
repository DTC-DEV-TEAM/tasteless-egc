<?php

namespace App\Console\Commands;

use App\Jobs\CampaignCreationFetchApi;
use App\Jobs\CompanyIdsJob;
use App\Jobs\GCListFetchJob;
use App\Jobs\StoreConceptFetchApi;
use App\QrCreation;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;

class RunApis extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:runapis';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Fetch all api';

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
        
        StoreConceptFetchApi::dispatch();
        CompanyIdsJob::dispatch();
        CampaignCreationFetchApi::dispatch();
        // GCListFetchJob::dispatch();

        $path = public_path('e_gift_card/img');
        $files = File::files($path);

        $filePaths = collect($files)->map->getPathname()->toArray();
        
        File::delete($filePaths);
        
        return 0;
    }
}
