# Backstory

## Context

1. The DEV version of the app in the `src/` folder works perfectly on my machine.
2. I have tried to install multiple iterations of `unzip-wendy-click-dist` on Wendy's device, but none of them have worked.

I want to try a new approach.

## New Approach:

### Concept

1. Clone the entire `unzip-wend-click` repository onto Wendy's device.
2. Create a new `debug-wendy1` branch.
3. Modify the known-good code in the `src/` folder so it should work on Wendy's device.
4. Fetch `wendy-test1` into the cloned repo on Wendy's device.
5. Debug as required.

### Considerations

When/if we get the app working on Wendy's device, it is almost certain that I will:

1. Make sure I am on the `wendy-test1` branch.
2. Close VS Code.
3. Open File Explorer and make a copy of `wendy-test1`.
4. Rename the copy as `wendy-book-extractor`.
5. Open `wendy-book-extractor` in File Explorer and delete `.git`
6. Reset:
   - the repo name in `package.json`
   - file version numbers
   - etc.

## Objective

Now that I've laid it out like that, it becomes clear that my next objective is to create a new repository that's custom-designed to work on Wendy's device.

## Next: See [Planning1](./Planning1.md)
