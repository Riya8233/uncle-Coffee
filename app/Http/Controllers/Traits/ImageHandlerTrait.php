<?php

namespace App\Http\Controllers\Traits;

use Intervention\Image\Laravel\Facades\Image;


trait ImageHandlerTrait
{

    private function handleImageUpload($imageFile, $path)
    {
        $image = Image::read($imageFile);
        $imageName = time() . '-' . $imageFile->getClientOriginalName();
        $storagePath = storage_path("app/public/$path");

        // Create directory if it doesn't exist
        if (!file_exists($storagePath)) {
            mkdir($storagePath, 0777, true);
        }

        // Save Main Image
        $image->save($storagePath . '/' . $imageName);

        // Generate cropped image (500x400)
        $image->cover(500, 400);
        $image->save($storagePath . '/' . $imageName);

        return "$path/$imageName";
    }

}


