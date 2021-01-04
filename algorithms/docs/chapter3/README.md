# 3.1 Building Blocks

**Definition 3.1** A **data type** is a set of values and a collection of operations
on those values.

# 3.2 Array

# 3.3 Linked Lists

**Definition 3.2** A linked list is a set of items where each item is part
of a node that also contains a link to a node.

# 3.4 Elementry list processing

# 3.5 String

## Indexed array versions
### Compute string length (strlen(a))
`for (i = 0; a[i] != 0; i++) ; return i;`
### Copy (strcpy(a, b))
`for (i = 0; (a[i] = b[i]) != 0; i++) ;`
### Compare (strcmp(a, b))

```
for (i = 0; a[i] == b[i]; i++)
if (a[i] == 0) return 0;
return a[i] - b[i];
```

### Compare (prefix) (strncmp(a, b, strlen(a)))

```
for (i = 0; a[i] == b[i]; i++)
if (a[i] == 0) return 0;
if (a[i] == 0) return 0;
return a[i] - b[i];
```

### Append (strcat(a, b))
`strcpy(a+strlen(a), b)`

## Equivalent pointer versions

### Compute string length (strlen(a))
`b = a; while (*b++) ; return b-a-1;`
### Copy (strcpy(a, b))
`while (*a++ = *b++) ;`
### Compare (strcmp(a, b))

```
while (*a++ == *b++)
if (*(a-1) == 0) return 0;
return *(a-1) - *(b-1);
```

# 3.7 Compund Data Structures

