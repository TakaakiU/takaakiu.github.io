---
# multilingual page pair id, this must pair with translations of this page. (This name must be unique)
lng_pair: id_winget-agreement-option
title: \[Warning\] winget Automation and First-Run Consent

# post specific
author: TakaakiU
# Tech or Idea
category: Tech
tags: [powershell, winget]
img: ":post_tech.jpg"

# publish date
date: 2025-08-12 00:00:00 +0900

# seo
#meta_modify_date: 2025-07-07 06:17:18 +0000
meta_description: "While `winget` is a powerful tool for installing software and applications automatically, there's a crucial point to consider when using it in automation. When you run a `winget` command for the first time on a machine, you are prompted to agree to the terms and conditions of the package source repository."

# optional settings
#image_viewer_on: true
#image_lazy_loader_on: true
#on_site_search_exclude: true
#search_engine_exclude: true
# published: false
---

While `winget` is a powerful tool for installing software and applications automatically, there's a crucial point to consider when using it in automation.
When you run a `winget` command for the first time on a machine, you are prompted to agree to the terms and conditions of the package source repository.

```powershell
PS C:\Users\Administrator> winget install --id microsoft.powershell --version 7.5.1.0
The 'msstore' source requires that you view the following agreements before using.
Terms of Transaction: https://aka.ms/microsoft-store-terms-of-transaction
The source requires the current machine's 2-letter geographic region to be sent to the backend service to function properly (ex. "US").

Do you agree to all the source agreements terms?
[Y] Yes [N] No: Y
```

Once you respond and agree to this prompt, it will not appear again on that machine.
This can lead to a common pitfall: during development, you might manually respond 'Yes' and then proceed to automate the `winget` command without any consent options. However, when you deploy this automation to a new test or production environment, the script hangs waiting for input that never comes, and fails to execute as expected.

I encountered this exact issue with an installer I created using Inno Setup, which executes a `winget` command without the necessary consent options. You can see the relevant Inno Setup script (`.iss` file) at the link below:

[https://github.com/TakaakiU/PyTkinterToPSScript-UserDefined/blob/main/installer/inno-setup_installer.iss](https://github.com/TakaakiU/PyTkinterToPSScript-UserDefined/blob/main/installer/inno-setup_installer.iss){:target="_blank" rel="noopener noreferrer"}

### The Solution: Use Agreement Options with winget

To prevent this, you must use two key command-line arguments when automating `winget`:

- `--accept-package-agreements`: To accept the license agreement for the package being installed.
- `--accept-source-agreements`: To accept the agreement for the source repository.

You must include both arguments to ensure your automation runs smoothly.

### Before the Fix

This is how my `inno-setup_installer.iss` looked without the agreement options.

```inno-setup
PSArgs := '-ExecutionPolicy Bypass -NoLogo -NonInteractive -WindowStyle Hidden -Command "winget install --id microsoft.powershell --version 7.5.1.0; exit $LASTEXITCODE"';
```

### After the Fix

Here is the corrected version with the agreement options added.

```inno-setup
PSArgs := '-ExecutionPolicy Bypass -NoLogo -NonInteractive -WindowStyle Hidden -Command "winget install --id microsoft.powershell --version 7.5.1.0 --accept-package-agreements --accept-source-agreements; exit $LASTEXITCODE"';
```

### Summary

When automating tasks with `winget`, you must include the following two agreement options in your command to ensure it runs non-interactively:

- `--accept-package-agreements`
    - Use this option to accept the license agreement for the package you are installing.
- `--accept-source-agreements`
    - Use this option to accept the terms and conditions for the source repository.

### References

[https://learn.microsoft.com/en-us/windows/package-manager/winget/install](https://learn.microsoft.com/en-us/windows/package-manager/winget/install){:target="_blank" rel="noopener noreferrer"}
