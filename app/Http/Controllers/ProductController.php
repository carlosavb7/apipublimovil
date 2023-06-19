<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Resources\ProductResource;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::paginate(10);

        return ProductResource::collection($products);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'quantity' => 'required|integer',
            'price' => 'required|numeric',
            'image' => 'image'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $product = Product::create($request->all());
        $path = $request->image->store("products_images");
        $product->image = $path;
        $product->save();

        return response()->json($product, 201);
    }

    public function show($id)
    {
        $product = Product::findOrFail($id);

        return response()->json(new ProductResource($product));
    }

    public function updateProduct(Request $request, $id)
    {
        
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'quantity' => 'required|integer',
            'price' => 'required|numeric',
            'image' => 'image'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $product = Product::findOrFail($id);
        $product->update($request->all());
        $path = $request->image->store("products_images");
        $product->image = $path;
        $product->save();

        return response()->json(new ProductResource($product));
    }

    public function destroy($id)
    {
        $product = Product::findOrFail($id);
        $product->delete();

        return response()->json(['message' => 'Producto eliminado']);
    }

    public function searh(Request $request)
    {
        $query = $request->input('query');

        $products = Product::whereRaw("BINARY sku LIKE '%{$query}%'")
        ->orWhereRaw("BINARY name LIKE '%{$query}%'")
        ->paginate(10);

        return ProductResource::collection($products);
    }
}
