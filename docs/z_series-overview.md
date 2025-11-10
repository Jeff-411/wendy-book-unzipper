# The `z_` Series Folders and Files

## Overview

The `z_` series provides 2 folders and 2 files to help test the app in the development environment.

## Folders

The `z_` series provides 2 folders to facilitate dev testing:

1. `z_BOOKS/`: As declared in `src/.env` ([here](../src/.env)) this is the output folder for the `.docx` files the app extracts from ZIP files.
2. `z_ZIPS/`: The content of this folder will change during the test process. It may contain:
   - sample ZIP files to use in testing the app
   - any non-`.docx` files the app extracts from ZIP files.

## Files

### Description

Two sample ZIPS `z1.zip` and `z2.zip` are provided in the root assets/ folder:

1. `z1.zip`:
   - Contains:
     - `z1.docx`
     - `z1.txt`
   - Tests:
     - basic app functionality
2. `z2.zip`:
   - Contains:
     - `z2.docx`
     - `z2.pdf`
     - `z3.txt`
   - Tests:
     - handling of multiple non-`.docx` files
     - handling of multiple non-`.docx` file types

**Note**: None of the above files have any content. They are just intended to be used for testing, as required.

### Usage

- Copy/paste these files into the `z_ZIPS/` folder for testing, as required.

**Notes**:

- This copy/paste step is required because the app intentionally DELETES ZIP FILES once they have been processed.
- Keep these files safe so they can be used to replenish the files in the `z_ZIPS/` folder after they have been deleted by the app.
