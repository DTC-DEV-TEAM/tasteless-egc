<?php

use Illuminate\Database\Seeder;

class EmailTemplateLogoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('email_template_logos')->updateOrInsert([
            'name' => 'Tasteless',
            ],
            [
                'name' => 'Tasteless (Pink)',
                'status' => 'ACTIVE',
                'created_by' => 7,
                'created_at' => date('Y-m-d H:i:s')
            ]);

        DB::table('email_template_logos')->updateOrInsert([
            'name' => 'Tasteless (Blue)',
            ],
            [
                'name' => 'Tasteless (Blue)',
                'status' => 'ACTIVE',
                'created_by' => 7,
                'created_at' => date('Y-m-d H:i:s')
            ]);
    }
}
