<?php

use Faker\Generator as Faker;

$factory->define(App\College::class, function (Faker $faker) {
    return [
        'college_name'=>$faker->word." college",
    ];
});
