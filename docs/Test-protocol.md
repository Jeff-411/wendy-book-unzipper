# Test Protocol

## Methodology

1. Debug code for testing should be created by adding options to the DEV codebase.
2. These debug options should be added in the form of codeblock-pair booleans (or config values) that can be enabled/disabled manually by commenting them in or out.
3. For example, the `.env` file (below) contains an `OUTPUT_FOLDER` codeblock-pair for selecting the DEV or WENDY device environment.

   ```text
   # User 1: DEV
   # OUTPUT_FOLDER=C:/Users/johnj/OneDrive/ZIP_HANDLER/unzip-wendy-click/z_BOOKS

   # User 2: WENDY
   OUTPUT_FOLDER=C:/Users/wendy/OneDrive/Documents/BOOKS
   ```

## Procedure

### 1. On the DEV device:

1. Create and enable the desired codeblock-pair booleans
2. Commit the change and push to origin

### 2. On the WENDY device:

**Setup**:

1. Switch to the `debug-wendy1` branch (Run `git fetch --all` first if required )
2. Run `git pull`
3. Clear any previous installs

- (double-click `key-delete.bat` in File Explorer)

**Install and Verify**:

4. Install app

- (double-click `key-register-dev.bat` in File Explorer)

5. Verify the install (in File Explorer):
1. Navigate to one of the `assets/*.zip` files
1. Right-click the ZIP file to open the context menu.
   - The "EXTRACT BOOK" option should appear in the context menu

**Test**:

1.  Copy/paste ZIP files from `assets/` to `z_ZIPS/`
2.  Navigate to `z_ZIPS/` in File Explorer.
3.  Right-click a ZIP file to open the context menu.
4.  Click the "EXTRACT BOOK" option.
