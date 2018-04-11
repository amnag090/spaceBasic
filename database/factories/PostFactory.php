<?php

use Faker\Generator as Faker;
use App\College;
use App\User;

$factory->define(App\Post::class, function (Faker $faker) {
    return [
        'user_id'=>function (){
            return  User::all()->random();
         },
         'college_id'=>function (){
            return  College::all()->random();
         },
        'title'=>$faker->sentence,
        'description'=>$faker->text,
    ];
});
