# Branch: `debug-wendy1`

## 1. Issue

The app works perfectly on my DEV machine, but not on Wendy's device.

## 2. Context

The remote `unzip-wendy-click` repository has been cloned onto Wendy's device.

This `debug-wendy1` branch of the repository holds a stripped down version of the app.

By default the code in `debug-wendy1` is set to work on the developer's device.

## 3. Usage - Setup test on Wendy's device

### 1. On the DEV device:

- [ ] 1. Confirm app works on the DEV device.
- [ ] 2. Toggle user to WENDY in `.env`
- [ ] 3. Commit the change and push

### 2. On the WENDY device:

**Setup**:

- [ ] 1. Switch to the `debug-wendy1` branch (Run `git fetch --all` first if required )
- [ ] 2. Run `git pull`
- [ ] 3. Clear any previous installs
  - (double-click `key-delete.bat` in File Explorer)

**Install and Verify**:

- [ ] 4. Install app
  - (double-click `key-register-dev.bat` in File Explorer)
- [ ] 5. Verify the install (in File Explorer):
  1. Navigate to one of the `assets/*.zip` files
  1. Right-click the ZIP file to open the context menu.
     - The "EXTRACT BOOK" option should appear in the context menu

## 4. Usage - Test the app on Wendy's device:

1.  Copy/paste ZIP files from `assets/` to `z_ZIPS/`
2.  Navigate to `z_ZIPS/` in File Explorer.
3.  Right-click a ZIP file to open the context menu.
4.  Click the "EXTRACT BOOK" option.

## 5. Usage - Post-test Tips:

1. Once the test version of `debug-wendy1` has been pulled onto Wendy's device, it is safe to:
   - restore the user to DEV in `.env`.
2. If you decide to use some variation of `debug-wendy1` as the base version of a new app:
   - be sure to update the "Review the following files:" section in `copilot-instructions.md`.
