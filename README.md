# MCVE For a Flow autocomplete issue

The purpose of this repo is to demonstrate a Flow issue,
where Flow is unable to provide autocomplete suggestions
for code that is inside a JSX attribute callback.

## How to test

Clone the repo and install Flow with `npm i`.

Run `./test-autocomplete.sh`.

## Output
```
Autocomplete suggestions for the first `obj`, outside of JSX:

foo string
hasOwnProperty (prop: mixed) => boolean
isPrototypeOf (o: mixed) => boolean
propertyIsEnumerable (prop: mixed) => boolean
toLocaleString () => string
toString () => string
valueOf () => mixed

Autocomplete suggestions for the last `obj`, inside button element body:

foo string
hasOwnProperty (prop: mixed) => boolean
isPrototypeOf (o: mixed) => boolean
propertyIsEnumerable (prop: mixed) => boolean
toLocaleString () => string
toString () => string
valueOf () => mixed

Autocomplete suggestions for the `obj` inside button onClick callback:

```