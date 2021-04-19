# strategies to solve recursivly
 * Map out a recursive decomposition: 
 * identify the base cases
 * Think one level up from the base case
 * Ensure that your return values from any case (base case or otherwise) are always of the same type. 
 * Get a stack trace.
  ```ruby 
  MAX_STACK_SIZE = 200
  tracer = proc do |event|
  if event == 'call' && caller_locations.length > MAX_STACK_SIZE
    fail "Probable Stack Overflow"
  end
  end
  set_trace_func(tracer)
```