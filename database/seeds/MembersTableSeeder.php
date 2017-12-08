<?php

use Illuminate\Database\Seeder;

use App\User;

class MembersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
		$faker = Faker\Factory::create();

		for ($i = 0; $i < 14; $i++) {
			for ($j = 1; $j < 11; $j++) {
				$user = new User;
				$user->username = $faker->userName;
				$user->password = $faker->password;
				$user->email = $faker->email;
				$user->first_name = $faker->firstNameMale;
				$user->last_name = $faker->lastName;
				$user->phone = $faker->phoneNumber;
				$user->organization_id = $j;
				
				$user->save();
			}
		}
    }
}
