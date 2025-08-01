The dir(str) command lists all the attributes and methods available for the str class in Python. Here's an example of how to use it:

List all attributes and methods of the str class

```
dir(str)
```

Example Output:

```
['__add__', '__class__', '__contains__', '__delattr__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__getnewargs__', '__getstate__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__iter__', '__le__', '__len__', '__lt__', '__mod__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__rmod__', '__rmul__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', 'capitalize', 'casefold', 'center', 'count', 'encode', 'endswith', 'expandtabs', 'find', 'format', 'format_map', 'index', 'isalnum', 'isalpha', 'isascii', 'isdecimal', 'isdigit', 'isidentifier', 'islower', 'isnumeric', 'isprintable', 'isspace', 'istitle', 'isupper', 'join', 'ljust', 'lower', 'lstrip', 'maketrans', 'partition', 'removeprefix', 'removesuffix', 'replace', 'rfind', 'rindex', 'rjust', 'rpartition', 'rsplit', 'rstrip', 'split', 'splitlines', 'startswith', 'strip', 'swapcase', 'title', 'translate', 'upper', 'zfill']
```

Explanation:
The output includes special methods (e.g., __add__, __len__) and string-specific methods (e.g., capitalize, upper, split).
These methods allow you to manipulate and interact with string objects in Python.

For example:

```
text = "hello, world"
print(text.upper())  # Converts to uppercase: "HELLO, WORLD"
print(text.split())  # Splits into a list: ['hello,', 'world']
```

Get detailed information about the str.upper method

```
help(str.upper)
```

Here’s an example of using the `help()` function to get detailed information about the `str.upper` method:

```python
# Get detailed information about the str.upper method
help(str.upper)
```

Example Output:

```
Help on method_descriptor:

upper(self, /)
    Return a copy of the string converted to uppercase.
```

Explanation:

- The `help()` function provides documentation for the `str.upper` method.
- It explains that `upper()` returns a copy of the string with all characters converted to uppercase.

The dir(__builtins__) command lists all the built-in functions, exceptions, and objects available in Python. Here's an example of how to use it:

List all built-in functions, exceptions, and objects

```
print("Attributes and methods of __builtins__:")
print(dir(__builtins__))
```

Example Output:

```
['ArithmeticError', 'AssertionError', 'AttributeError', 'BaseException', 'BlockingIOError', 'BrokenPipeError', 'BufferError', 'BytesWarning', 'ChildProcessError', 'ConnectionAbortedError', 'ConnectionError', 'ConnectionRefusedError', 'ConnectionResetError', 'DeprecationWarning', 'EOFError', 'Ellipsis', 'EnvironmentError', 'Exception', 'False', 'FileExistsError', 'FileNotFoundError', 'FloatingPointError', 'FutureWarning', 'GeneratorExit', 'IOError', 'ImportError', 'ImportWarning', 'IndentationError', 'IndexError', 'InterruptedError', 'IsADirectoryError', 'KeyError', 'KeyboardInterrupt', 'LookupError', 'MemoryError', 'ModuleNotFoundError', 'NameError', 'None', 'NotADirectoryError', 'NotImplemented', 'NotImplementedError', 'OSError', 'OverflowError', 'PendingDeprecationWarning', 'PermissionError', 'ProcessLookupError', 'RecursionError', 'ReferenceError', 'ResourceWarning', 'RuntimeError', 'RuntimeWarning', 'StopAsyncIteration', 'StopIteration', 'SyntaxError', 'SyntaxWarning', 'SystemError', 'SystemExit', 'TabError', 'TimeoutError', 'True', 'TypeError', 'UnboundLocalError', 'UnicodeDecodeError', 'UnicodeEncodeError', 'UnicodeError', 'UnicodeTranslateError', 'UnicodeWarning', 'UserWarning', 'ValueError', 'Warning', 'ZeroDivisionError', '__build_class__', '__debug__', '__doc__', '__import__', '__loader__', '__name__', '__package__', '__spec__', 'abs', 'all', 'any', 'ascii', 'bin', 'bool', 'breakpoint', 'bytearray', 'bytes', 'callable', 'chr', 'classmethod', 'compile', 'complex', 'copyright', 'credits', 'delattr', 'dict', 'dir', 'divmod', 'enumerate', 'eval', 'exec', 'exit', 'filter', 'float', 'format', 'frozenset', 'getattr', 'globals', 'hasattr', 'hash', 'help', 'hex', 'id', 'input', 'int', 'isinstance', 'issubclass', 'iter', 'len', 'license', 'list', 'locals', 'map', 'max', 'memoryview', 'min', 'next', 'object', 'oct', 'open', 'ord', 'pow', 'print', 'property', 'quit', 'range', 'repr', 'reversed', 'round', 'set', 'setattr', 'slice', 'sorted', 'staticmethod', 'str', 'sum', 'super', 'tuple', 'type', 'vars', 'zip']
```

Explanation:

- The output includes built-in exceptions (e.g., ValueError, TypeError), constants (e.g., True, False, None), and functions (e.g., print, len, abs).
- These are always available in Python without needing to import any module.

For example:

```
print(abs(-5))  # Returns the absolute value: 5
print(len("hello"))  # Returns the length of the string: 5
```

# List

- Mutable: You can modify a list (e.g., add, remove, or change elements).
- Syntax: Defined using square brackets [].
- Use Case: When you need a collection of items that can change.
  Example:

```
List
student_grades = [9.1, 8.5, 7.3, 9.0, 8.8]

# Modify the list
student_grades.append(7.5)  # Add an element
student_grades[0] = 9.5     # Change an element
print(student_grades)       # Output: [9.5, 8.5, 7.3, 9.0, 8.8, 7.5]
```

# Tuple

- Immutable: You cannot modify a tuple after it is created.
- Syntax: Defined using parentheses ().
- Use Case: When you need a collection of items that should not change.
  Example:

```
Tuple
student_temperate = (9.1, 8.5, 7.3, 9.0, 8.8)

# Access elements
print(student_temperate[0])  # Output: 9.1

# Attempting to modify a tuple will raise an error
# student_temperate[0] = 9.5  # TypeError: 'tuple' object does not support item assignment
```

Key Differences:

| Feature               | List                       | Tuple                        |
| --------------------- | -------------------------- | ---------------------------- |
| **Mutability**  | Mutable                    | Immutable                    |
| **Syntax**      | Square brackets `[]`     | Parentheses `()`           |
| **Performance** | Slower (due to mutability) | Faster (due to immutability) |
| **Use Case**    | Dynamic data               | Fixed data                   |


