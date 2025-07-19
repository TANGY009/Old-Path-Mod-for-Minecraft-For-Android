# 🛠️ Path Mod for Minecraft for Android 1.21.94

👉 [Русский перевод](README_ru.md)

A Polished Guide to Make Minecraft for Android Store Worlds and Files the Old Way:

**Target Path :**
``/storage/emulated/0/games/com.mojang/minecraftWorlds``

**Instead of :**
``/storage/emulated/0/Android/data/com.mojang.minecraftpe/files/games/com.mojang/minecraftWorlds``


Thanks to inotflying (Egornya) for inventing this method.


📦 **What You’ll Need :**

[Apktool M](https://maximoff.su/apktool/?lang=en)

🚀 **Let's Begin :**

🔧 **DECOMPILATION**

- Open Apktool M.
- Go to the Applications tab, tap Installed Applications, and search for Minecraft using the search bar.
- Select Minecraft, then tap Decompile.
- Tick all options, then tap OK.
- Wait for the process to complete, then tap GO TO.

📝 **EDITING**

- Open the /smali_classes2 folder. Navigate to:
   ``/com/mojang/minecraftpe``
-   Find and open MainActivity.smali.
> 📌 Note: If this directory or file is not found in /smali_classes2, check the /smali folder instead.
- After opening MainActivity.smali, make the [following changes](https://github.com/TANGY009/Old-Path-Mod-for-Minecraft-For-Android/commit/d7fc5ebae92b10de8fe615cdd3bd189452af7453) and save the file.
- Exit the /smali_classes2 folder, go to the /smali folder, navigate to:
``/com/android``
- Create a folder named support, and place the GRxPermissions.smali file inside it.
-  Then exit the /smali folder.
- Open AndroidManifest.xml and add this line as [shown](https://github.com/TANGY009/Old-Path-Mod-for-Minecraft-For-Android/commit/6d3dd14ef7ea5d0a11f34502f715a51f48dd17f8).
- Open apktool.json and make the [following changes](https://github.com/TANGY009/Old-Path-Mod-for-Minecraft-For-Android/commit/5d57260cf129945dc1db342265ffa5a22ea1a7ae).  

📦 **COMPILATION**

-   Scroll up and tap Compile this project then tap ok.
-   Wait for the process to finish.
-   Then ensure that your Minecraft worlds are backed up and are in a safe location.
-   After ensuring that your Minecraft worlds are backed up, uninstall the current Minecraft you have.
-   Then install the apk you just compiled.     

🎉 **MISSION ACCOMPLISHED**

✅You’ve successfully modified Minecraft to store worlds using the old path!
✨Open the app and give it storage permission then enjoy.✨
