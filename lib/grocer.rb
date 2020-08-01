grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]

def find_item_by_name_in_collection(name, grocery_shelf)

      item_hash = grocery_shelf.find do |array_index|
            array_index[:item] == name
      end
  return item_hash
end

#pp find_item_by_name_in_collection("SALSA", grocery_shelf) #=> this should return {:item=>"SALSA", :price=>1.5, :clearance=>false}
#pp find_item_by_name_in_collection("COOKIE", grocery_shelf) #=> this should return 'nil'



def consolidate_cart(grocery_shelf)
  unique_array = grocery_shelf.uniq
   unique_array_with_count = unique_array.map do |item_hash|
        item_hash[:count] = grocery_shelf.count(item_hash)
        item_hash
    end
end

pp consolidate_cart(grocery_shelf)

# pp grocery_shelf.uniq.map{ |i| [i, grocery_shelf.count(i)] }.to_h