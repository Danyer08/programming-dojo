A = 1 -- Global number variable (Global varibles are named with camle case by convension)
B = "This variable has global scope" -- Global string variable
local c = "This is a local variable" -- Local variable (Local variables are named with lower case by convension)
local function fn1()
	local d = "Scoped variable, only accessible within function"
	local function nestedFn1() -- Functions can be nested
		print("Nested Function 1")
	end
	function NestedFn2() -- Also functions can be declared inside another function with global scope (not recommended, but possible).
		print("Nested Function 2, but global")
	end

	print(c) -- This will print the value of c since scope is inherited, but not other way around.
	print(d)
	nestedFn1()
end

print(A)
print(B)
-- print(c) Already printed within fn1
-- print(d) (This will throw an error as d is not accessible outside of the function)

fn1()
NestedFn2() -- Will print "Nested Function 2", as it is a global function
