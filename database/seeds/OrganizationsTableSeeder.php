<?php

use Illuminate\Database\Seeder;
use App\Organization;

class OrganizationsTableSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run() {
		$faker = Faker\Factory::create();

		for ($i = 0; $i < 10; $i++) {
			$org = new Organization;
			$org->name = $faker->company;
			$org->address1 = $faker->streetAddress;
			$org->city = $faker->city;
			$org->state = 'TX';
			$org->zipcode = $faker->postcode;
			$org->main_phone = $faker->phoneNumber;

			$org->save();
		}
	}

}
