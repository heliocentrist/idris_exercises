
export
palindrome: String -> Bool
palindrome a = a == reverse a

palindromeCaseInsensitive: String -> Bool
palindromeCaseInsensitive a = let left = toLower a
                                  right = toLower (reverse a) in
                                  left == right

palindrome10longer: String -> Bool
palindrome10longer a = if length a > 10 then palindromeCaseInsensitive a else False

palindromexlonger: Nat -> String -> Bool
palindromexlonger x a = if length a > x then palindromeCaseInsensitive a else False

export
counts: String -> (Nat, Nat)
counts a = (length (words a), length a)

top_ten: Ord a => List a -> List a
top_ten xs = take 10 (reverse (sort xs))

over_length: Nat -> List String -> Nat
over_length x as = length (filter (check_length x) as)
  where
    check_length: Nat -> String -> Bool
    check_length x a = length a > x
