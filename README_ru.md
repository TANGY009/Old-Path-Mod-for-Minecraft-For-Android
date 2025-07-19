
  
# 🛠️ Path Mod для Minecraft на Android 1.21.94  
*Перевод на русский язык выполнен с помощью ChatGPT.*  
  
Полное руководство по возвращению старого способа хранения миров и файлов Minecraft на Android:  
  
**Целевой путь :**  
``/storage/emulated/0/games/com.mojang/minecraftWorlds``  
  
**Вместо :**  
``/storage/emulated/0/Android/data/com.mojang.minecraftpe/files/games/com.mojang/minecraftWorlds``  
  
Благодарность inotflying (Egornya) за создание этого метода.  
  
📦 **Что потребуется :**  

[Apktool M](https://maximoff.su/apktool/?lang=ru)  
  
🚀 **Начнём :**  
  
🔧 **ДЕКОМПИЛЯЦИЯ**  
  
- Откройте Apktool M.  
- Перейдите во вкладку "Приложения", нажмите "Установленные приложения" и найдите Minecraft через строку поиска.  
- Выберите Minecraft и нажмите "Декомпилировать".  
- Отметьте все параметры и нажмите OK.  
- Дождитесь завершения процесса, затем нажмите "ПЕРЕЙТИ".  
  
📝 **РЕДАКТИРОВАНИЕ**  
  
- Откройте папку /smali_classes2. Перейдите по пути:  
``/com/mojang/minecraftpe``  
- Найдите и откройте файл MainActivity.smali.  
> 📌 Примечание: Если папка или файл отсутствуют в /smali_classes2, проверьте в папке /smali.  
- После открытия MainActivity.smali внесите [следующие изменения](https://github.com/TANGY009/Old-Path-Mod-for-Minecraft-For-Android/commit/d7fc5ebae92b10de8fe615cdd3bd189452af7453) и сохраните файл.  
- Выйдите из папки /smali_classes2, затем откройте папку /smali и перейдите по пути:  
``/com/android``  
- Создайте папку с именем support и поместите внутрь файл GRxPermissions.smali.  
- Затем выйдите из папки /smali.  
- Откройте AndroidManifest.xml и добавьте строку, как [показано здесь](https://github.com/TANGY009/Old-Path-Mod-for-Minecraft-For-Android/commit/6d3dd14ef7ea5d0a11f34502f715a51f48dd17f8).  
- Откройте apktool.json и внесите [следующие изменения](https://github.com/TANGY009/Old-Path-Mod-for-Minecraft-For-Android/commit/5d57260cf129945dc1db342265ffa5a22ea1a7ae).  
  
📦 **КОМПИЛЯЦИЯ**  
  
- Пролистайте вверх и нажмите "Скомпилировать проект", затем "OK".  
- Дождитесь завершения процесса.  
- Убедитесь, что ваши миры Minecraft сохранены в безопасном месте.  
- После этого удалите текущую установленную версию Minecraft.  
- Затем установите только что скомпилированный APK.  
  
🎉 **МИССИЯ ВЫПОЛНЕНА**  
  
✅ Вы успешно изменили Minecraft для хранения миров по старому пути!  
✨ Откройте приложение, предоставьте разрешение на доступ к хранилищу — и наслаждайтесь! ✨
