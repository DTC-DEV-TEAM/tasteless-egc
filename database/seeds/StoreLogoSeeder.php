<?php

use Illuminate\Database\Seeder;

class StoreLogoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('store_logos')->updateOrInsert([
            'name' => 'Tasteless',
            ],
            [
                'name' => 'Tasteless',
                'status' => 'ACTIVE',
                'created_by' => 7,
                'created_at' => date('Y-m-d H:i:s')
            ]);
    }
}
