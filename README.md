# 📁 xperia-c1505-ics-settings - Settings App Smali Code

This repository contains **decompiled and patched Smali source code** of the **Settings app** used in the Xperia E (C1505), based on the **Sony Xperia Tipo (ST21i) Android 4.0.4 firmware**. This project simplifies patching and modifying the Settings app for Xperia C1505, leveraging the cleaner structure from the Xperia Tipo’s ICS firmware.

---

## 📌 Purpose

- 🔧 Patching and customization of the **Settings app** for **Xperia C1505**  
- 🧩 Leverage the cleaner **ICS (4.0.4)** app structure from **Xperia Tipo** for easier modification  
- 🛠️ Enable tweaks to core system app **Smali** code  
- 💡 Support **ROM development** and **legacy hardware maintenance**  

---

## 🧰 Toolchain

- **Apktool:** v2.7.0  
- **Smali/Baksmali:** v2.5.2-403e9037  
- Based on work by:  
  - Ryszard Wiśniewski <brut.alll@gmail.com>  
  - Connor Tumbleson <connor.tumbleson@gmail.com>

---

> ⚠️ **Note:** The code in this repository is intended for **Xperia E (C1505)**, but the system apps were decompiled from **Xperia Tipo’s** Android 4.0.4 firmware due to its simpler app structure, making it easier to patch for compatibility with the C1505.

---

## 📎 Related Projects

- [Main ROM Port Repository (xperia-c1505-ics)](https://github.com/JackGates1311/xperia-c1505-ics)
- [Apktool usage (medium.com)](https://medium.com/@ps.sujith/decompile-and-recompile-apk-using-apktool-beginners-guide-4ad03c2c5b8f)

---

## 🔧 How to Modify and Rebuild the Settings App (Smali Code)

### 1. **Prepare the Environment**

You’ll need **Apktool** and **Smali/Baksmali** to work with the decompiled APK.

- **Install Apktool**:
  - On **Ubuntu**:
    ```bash
    sudo apt install apktool
    ```

  - On **macOS** (via Homebrew):
    ```bash
    brew install apktool
    ```

  - On **Windows**, download the latest version from the [Apktool website](https://github.com/iBotPeaches/Apktool) and set it up following the instructions.

- **Install Smali/Baksmali**:
  - Smali and Baksmali come bundled with Apktool.

---

### 2. **Decompile the Settings APK (not needed, already is decompiled)**

To make changes to the **Settings app**, decompile it into a working folder.

- **Command to decompile**:
```bash
apktool d apks/Settings.apk -o Settings
```
### 3. Modify the Smali Code

The decompiled `Settings.apk` will be in Smali format. You can edit the Smali and resource files to make necessary changes. Smali is a lower-level language that represents the compiled Java code in a human-readable format.

#### Example Modifications:

##### Modify a class or method:
- Navigate to the relevant Smali files inside `Settings/smali/`.
- Open and modify the desired classes or methods, such as changing the behavior of settings activity or adding new settings.

##### Adjust the layout:
- Modify the XML files under `res/layout/` to change the UI components, such as adding or removing elements.

#### Example File to Edit:
```plaintext
Settings/smali/com/sony/ericsson/settings/SettingsActivity.smali
```

### 4. Rebuild the APK

Once the modifications are done, rebuild the APK.

- **Command to rebuild**:
```bash
apktool b Settings/ -o Settings_modified.apk
```

### 5. Sign the APK (workaround way)

Since you don't have a signing key, we will use a workaround to patch the original APK.
Steps:

- Locate the original **Settings.apk** in the system directory at **apks/Settings.apk.**

- Copy the APK and rename it to a .zip file (e.g., Settings.zip).

- Open the .zip file and navigate to the **classes.dex** file.

- Replace the **existing classes.dex** file with the **modified one** from the **Settings_modified.apk** generated earlier.

- After replacing **classes.dex**, re-archive the contents into a **.zip** file.

- Finally, rename the **.zip** back to **.apk** (e.g., Settings.apk).

### 6. **Install the Patched System APK (Manually with `adb push`)**

Since the **Settings.apk** is a system app, you must replace it in the `/system/app/` directory, not install it using `adb install`.

#### ⚠️ Warning:
Make sure your device is rooted and has `adb root` access. Replacing a system app improperly may cause the device to crash or bootloop.

#### Steps:

1. **Remount `/system` as read-write:**

   ```bash
   adb root
   adb remount
   ```

2. **Push the patched APK to the device:**

   ```bash
    adb push Settings.apk /system/app/Settings.apk
   ```

3. **Set correct permissions:**

   ```bash
   adb shell chmod 644 /system/app/Settings.apk
   ```

4. **Reboot the device:**

   ```bash
    adb reboot
   ```

After rebooting, the system should load the new patched version of **Settings.apk.**

### 7. Test the Changes

Once the APK is installed, check the device to ensure that the changes are applied. Open the **Settings** app and verify if your modifications are in place. If there are issues, review the Smali and XML files to confirm the patches were applied correctly.

## 📝 Conclusion

Using Apktool and Smali/Baksmali, you can decompile, modify, and rebuild the Settings app for the Xperia E (C1505) based on the Xperia Tipo’s Android 4.0.4 firmware. This process allows for easy patching and tweaking of core system apps.