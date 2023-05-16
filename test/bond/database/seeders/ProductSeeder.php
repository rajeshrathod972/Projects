<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('products')->insert([
            [
                'name'=>'Oppo mobile',
                'price'=>'700',
                'description'=>'A smartphone with 4gb ram and much more feature',
                'category'=>'mobile',
                'gallery'=>'https://www.google.com/search?q=oppo&rlz=1C1GCEA_enIN1029IN1029&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjF-umgqeD-AhUPamwGHcM4AGUQ_AUoA3oECAEQBQ&biw=1536&bih=722&dpr=1.25#imgrc=GqmDKKwPRJBwHM',
                
            ],
            [
                'name'=>'Samsung mobile',
                'price'=>'800',
                'description'=>'A smartphone with 4gb ram and much more feature',
                'category'=>'mobile',
                'gallery'=>'https://www.google.com/search?q=samsung&rlz=1C1GCEA_enIN1029IN1029&source=lnms&tbm=isch&sa=X&ved=2ahUKEwiArOm2qeD-AhVISmwGHfd5C4wQ_AUoA3oECAEQBQ&biw=1536&bih=722&dpr=1.25#imgrc=AaQXjDBsRztgfM',
                
            ],
            [
                'name'=>'Vivo mobile',
                'price'=>'450',
                'description'=>'A smartphone with 4gb ram and much more feature',
                'category'=>'mobile',
                'gallery'=>'https://www.google.com/search?q=vivo&rlz=1C1GCEA_enIN1029IN1029&source=lnms&tbm=isch&sa=X&ved=2ahUKEwig9v7NqeD-AhWMSGwGHbJ5B6UQ_AUoA3oECAEQBQ&biw=1536&bih=722&dpr=1.25#imgrc=bqwus89U6r1k9M',
                
            ],
            [
                'name'=>'Nokia mobile',
                'price'=>'400',
                'description'=>'A smartphone with 4gb ram and much more feature',
                'category'=>'mobile',
                'gallery'=>'https://www.google.com/search?q=nokia&rlz=1C1GCEA_enIN1029IN1029&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjngOG6quD-AhVsa2wGHbFYCogQ_AUoA3oECAMQBQ&biw=1536&bih=722&dpr=1.25#imgrc=uFpNml3KIcaIzM',
                
            ],
            [
                'name'=>'OnePlus mobile',
                'price'=>'900',
                'description'=>'A smartphone with 4gb ram and much more feature',
                'category'=>'mobile',
                'gallery'=>'https://www.google.com/search?q=oneplus&rlz=1C1GCEA_enIN1029IN1029&source=lnms&tbm=isch&sa=X&ved=2ahUKEwjTl_SMquD-AhU2cGwGHZmnBG4Q_AUoA3oECAEQBQ&biw=1536&bih=722&dpr=1.25#imgrc=eN1-V9EDo9B1WM',
                
            ]
        ]);
    }
}
