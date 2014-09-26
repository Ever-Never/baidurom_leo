.class public Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;
.super Ljava/lang/Object;
.source "ThemeApplyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeHelper"

.field static buffer:[B

.field public static mIsSelfBroadcast_lockscreen:I

.field public static mIsSelfBroadcast_wallpaper:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput v0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->mIsSelfBroadcast_wallpaper:I

    .line 48
    sput v0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->mIsSelfBroadcast_lockscreen:I

    .line 481
    const/16 v0, 0x4000

    new-array v0, v0, [B

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->buffer:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->deleteThemeWithRestore(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static applyAll(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;)I
    .locals 7
    .parameter "context"
    .parameter "themeinfo"
    .parameter "callBack"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 66
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getThemeLevel()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 67
    invoke-static {p0, p2}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->restoreDefaultTheme(Landroid/content/Context;Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;)I

    .line 78
    :goto_0
    return v5

    .line 71
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, mComponentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getComponentList()Ljava/util/ArrayList;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getComponentList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Z

    .line 75
    .local v3, mComponentCheckedArray:[Z
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([ZZ)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 77
    invoke-static/range {v0 .. v6}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyPart(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;Ljava/util/ArrayList;[ZLcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;ZZ)I

    goto :goto_0
.end method

.method public static applyFromAsset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "packageName"

    .prologue
    .line 575
    new-instance v0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-static {p0, p1}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getThemeIDByPath(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;-><init>(Landroid/content/Context;II)V

    .line 576
    .local v0, themeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->init()V

    .line 580
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyAll(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;)I

    .line 624
    return-void
.end method

.method public static applyIconFromAsset(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;)V
    .locals 8
    .parameter "ctx"
    .parameter "packageName"
    .parameter "callBack"

    .prologue
    .line 627
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 628
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 630
    .local v3, resources:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 635
    :goto_0
    if-nez v3, :cond_0

    .line 663
    :goto_1
    return-void

    .line 631
    :catch_0
    move-exception v1

    .line 633
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 638
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v0, "theme/theme.zip"

    .line 639
    .local v0, choose:Ljava/lang/String;
    sget v5, Lcom/baidu/launcher/app/LauncherApplication;->densityDpi:I

    const/16 v6, 0x140

    if-ne v5, v6, :cond_1

    .line 640
    const-string v0, "theme/theme-xhdpi.zip"

    .line 642
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/theme.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->copyAssetsFile(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    if-eqz p2, :cond_2

    .line 645
    const/4 v5, 0x1

    invoke-interface {p2, v5}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;->notifyDialogProgress(I)V

    .line 650
    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/theme.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 652
    .local v4, zip:Ljava/util/zip/ZipFile;
    invoke-static {v4, p0}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->unzipTheme(Ljava/util/zip/ZipFile;Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 662
    .end local v4           #zip:Ljava/util/zip/ZipFile;
    :goto_2
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->checkAccessory(Landroid/content/Context;)V

    goto :goto_1

    .line 654
    :catch_1
    move-exception v1

    .line 656
    .local v1, e:Ljava/util/zip/ZipException;
    invoke-virtual {v1}, Ljava/util/zip/ZipException;->printStackTrace()V

    goto :goto_2

    .line 657
    .end local v1           #e:Ljava/util/zip/ZipException;
    :catch_2
    move-exception v1

    .line 659
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static applyPart(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;Ljava/util/ArrayList;[ZLcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;ZZ)I
    .locals 7
    .parameter "context"
    .parameter "themeinfo"
    .parameter
    .parameter "mComponentCheckedArray"
    .parameter "callBack"
    .parameter "isRestore"
    .parameter "isSaveAsDefault"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/launcher/thememanager/model/ThemeInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[Z",
            "Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;",
            "ZZ)I"
        }
    .end annotation

    .prologue
    .line 97
    .local p2, mComponentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p5}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyTheme(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;Ljava/util/ArrayList;[ZLcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;Z)I

    move-result v3

    .line 99
    .local v3, ret:I
    if-nez v3, :cond_5

    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 101
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 103
    .local v1, localEditor:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 104
    aget-boolean v4, p3, v0

    if-eqz v4, :cond_0

    .line 105
    sget-object v4, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 106
    sget-object v4, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz p5, :cond_1

    const-string v5, "\u9ed8\u8ba4V1"

    :goto_1
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p5, :cond_2

    const-string v4, "\u9ed8\u8ba4V1"

    :goto_2
    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 110
    :cond_2
    iget-object v4, p1, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mTitle:Ljava/lang/String;

    goto :goto_2

    .line 119
    :cond_3
    if-eqz p6, :cond_4

    .line 120
    const-string v4, "theme_default"

    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v4, "theme_default_title"

    iget-object v5, p1, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    .end local v0           #i:I
    .end local v1           #localEditor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_5
    return v3
.end method

.method public static applyTheme(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;Ljava/util/ArrayList;[ZLcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;Z)I
    .locals 5
    .parameter "context"
    .parameter "info"
    .parameter
    .parameter "component_checked"
    .parameter "callBack"
    .parameter "isRestore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/launcher/thememanager/model/ThemeInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[Z",
            "Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;",
            "Z)I"
        }
    .end annotation

    .prologue
    .local p2, component_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, ret:I
    if-eqz p0, :cond_2

    .line 151
    iget v2, p1, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mThemeType:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_4

    .line 152
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 154
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p4}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyIconFromAsset(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;)V

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 157
    aget-boolean v2, p3, v0

    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, p1, v2, v4, p5}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyThemeComponent(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;Ljava/lang/String;ZZ)I

    .line 159
    if-eqz p4, :cond_0

    .line 160
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p4, v2}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;->notifyDialogProgress(I)V

    .line 162
    :cond_0
    if-eqz v1, :cond_3

    .line 185
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/theme.zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 189
    .end local v0           #i:I
    :cond_2
    return v1

    .line 156
    .restart local v0       #i:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0           #i:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 171
    aget-boolean v2, p3, v0

    if-eqz v2, :cond_6

    .line 172
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, p1, v2, v4, p5}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyThemeComponent(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;Ljava/lang/String;ZZ)I

    .line 174
    if-eqz p4, :cond_5

    .line 175
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p4, v2}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;->notifyDialogProgress(I)V

    .line 178
    :cond_5
    if-nez v1, :cond_1

    .line 170
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static applyThemeComponent(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;Ljava/lang/String;ZZ)I
    .locals 3
    .parameter "context"
    .parameter "info"
    .parameter "component"
    .parameter "delete"
    .parameter "is_restore"

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, ret:I
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getThemeLevel()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-eqz p4, :cond_2

    .line 206
    :cond_0
    const-string v1, "wallpaper"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->restoreDefaultWallpaper(Landroid/content/Context;)V

    .line 232
    :cond_1
    :goto_0
    return v0

    .line 211
    :cond_2
    const-string v1, "icons"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    iget v1, p1, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mThemeType:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_1

    .line 221
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyThemeIcons(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.baidu.home2"

    invoke-static {p0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyThemeIcons(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_3
    const-string v1, "wallpaper"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    invoke-static {p0, p1}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->applyWallpaper(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;)V

    goto :goto_0
.end method

.method private static applyThemeIcons(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .parameter "ctx"
    .parameter "themeName"
    .parameter "componentName"

    .prologue
    .line 735
    if-eqz p0, :cond_0

    .line 736
    const/16 v17, 0x0

    .line 737
    .local v17, orig_dir:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 738
    .local v6, dest_dir:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDiskRoot()Ljava/lang/String;

    move-result-object v18

    .line 739
    .local v18, rootpath:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 741
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Lcom/baidu/launcher/thememanager/util/Constants;->THEME_CACHE_DIR:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "icons"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 744
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "icons"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 753
    :goto_0
    new-instance v16, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 754
    .local v16, origFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_2

    .line 838
    .end local v6           #dest_dir:Ljava/lang/StringBuilder;
    .end local v16           #origFile:Ljava/io/File;
    .end local v17           #orig_dir:Ljava/lang/StringBuilder;
    .end local v18           #rootpath:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 746
    .restart local v6       #dest_dir:Ljava/lang/StringBuilder;
    .restart local v17       #orig_dir:Ljava/lang/StringBuilder;
    .restart local v18       #rootpath:Ljava/lang/String;
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Lcom/baidu/launcher/thememanager/util/Constants;->THEME_CACHE_DIR:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "com.baidu.home2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 749
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "com.baidu.home2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_0

    .line 758
    .restart local v16       #origFile:Ljava/io/File;
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 759
    .local v5, destFile:Ljava/io/File;
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 760
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 762
    const/16 v19, 0x0

    .line 763
    .local v19, zip:Ljava/util/zip/ZipFile;
    const/4 v13, 0x0

    .line 764
    .local v13, in:Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 765
    .local v11, fos:Ljava/io/FileOutputStream;
    const/16 v21, 0x4000

    move/from16 v0, v21

    new-array v2, v0, [B

    .line 768
    .local v2, buffer:[B
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/baidu/launcher/thememanager/util/Utils;->isZipFormat(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 770
    new-instance v20, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 771
    .end local v19           #zip:Ljava/util/zip/ZipFile;
    .local v20, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    move-result-object v9

    .local v9, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    move-object v12, v11

    .line 772
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .local v12, fos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    :try_start_2
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 773
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/zip/ZipEntry;

    .line 775
    .local v10, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_3

    .line 779
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    .line 781
    invoke-virtual {v10}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    .line 782
    .local v15, name:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 784
    .local v4, currentOutFilePath:Ljava/lang/String;
    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 785
    .local v7, dex:I
    if-lez v7, :cond_4

    .line 786
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 787
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 788
    .local v3, currentFileDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 791
    .end local v3           #currentFileDir:Ljava/io/File;
    :cond_4
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 793
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 795
    .local v14, len:I
    :goto_3
    const/16 v21, 0x0

    const/16 v22, 0x4000

    :try_start_3
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    if-lez v14, :cond_8

    .line 796
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v2, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    goto :goto_3

    .line 809
    .end local v4           #currentOutFilePath:Ljava/lang/String;
    .end local v7           #dex:I
    .end local v9           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v10           #entry:Ljava/util/zip/ZipEntry;
    .end local v14           #len:I
    .end local v15           #name:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object/from16 v19, v20

    .line 810
    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .local v8, e:Ljava/util/zip/ZipException;
    .restart local v19       #zip:Ljava/util/zip/ZipFile;
    :goto_4
    :try_start_4
    invoke-virtual {v8}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 819
    if-eqz v11, :cond_5

    .line 820
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 822
    :cond_5
    if-eqz v13, :cond_6

    .line 823
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 825
    :cond_6
    if-eqz v19, :cond_7

    .line 826
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 833
    .end local v8           #e:Ljava/util/zip/ZipException;
    :cond_7
    :goto_5
    if-eqz p2, :cond_0

    .line 835
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->checkAccessory(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 799
    .end local v19           #zip:Ljava/util/zip/ZipFile;
    .restart local v4       #currentOutFilePath:Ljava/lang/String;
    .restart local v7       #dex:I
    .restart local v9       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v10       #entry:Ljava/util/zip/ZipEntry;
    .restart local v14       #len:I
    .restart local v15       #name:Ljava/lang/String;
    .restart local v20       #zip:Ljava/util/zip/ZipFile;
    :cond_8
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 800
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    move-object v12, v11

    .line 802
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v4           #currentOutFilePath:Ljava/lang/String;
    .end local v7           #dex:I
    .end local v10           #entry:Ljava/util/zip/ZipEntry;
    .end local v14           #len:I
    .end local v15           #name:Ljava/lang/String;
    :cond_9
    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .line 819
    .end local v9           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .restart local v19       #zip:Ljava/util/zip/ZipFile;
    :cond_a
    :goto_6
    if-eqz v11, :cond_b

    .line 820
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 822
    :cond_b
    if-eqz v13, :cond_c

    .line 823
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 825
    :cond_c
    if-eqz v19, :cond_7

    .line 826
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 828
    :catch_1
    move-exception v8

    .line 829
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 804
    .end local v8           #e:Ljava/io/IOException;
    :cond_d
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 806
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->FolderCopy(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_6

    .line 809
    :catch_2
    move-exception v8

    goto :goto_4

    .line 828
    .local v8, e:Ljava/util/zip/ZipException;
    :catch_3
    move-exception v8

    .line 829
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 811
    .end local v8           #e:Ljava/io/IOException;
    :catch_4
    move-exception v8

    .line 812
    .local v8, e:Ljava/lang/IllegalStateException;
    :goto_7
    :try_start_9
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 819
    if-eqz v11, :cond_e

    .line 820
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 822
    :cond_e
    if-eqz v13, :cond_f

    .line 823
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 825
    :cond_f
    if-eqz v19, :cond_7

    .line 826
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_5

    .line 828
    :catch_5
    move-exception v8

    .line 829
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 813
    .end local v8           #e:Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 814
    .local v8, e:Ljava/lang/NullPointerException;
    :goto_8
    :try_start_b
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 819
    if-eqz v11, :cond_10

    .line 820
    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 822
    :cond_10
    if-eqz v13, :cond_11

    .line 823
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 825
    :cond_11
    if-eqz v19, :cond_7

    .line 826
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_5

    .line 828
    :catch_7
    move-exception v8

    .line 829
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 815
    .end local v8           #e:Ljava/io/IOException;
    :catch_8
    move-exception v8

    .line 816
    .restart local v8       #e:Ljava/io/IOException;
    :goto_9
    :try_start_d
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 819
    if-eqz v11, :cond_12

    .line 820
    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 822
    :cond_12
    if-eqz v13, :cond_13

    .line 823
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 825
    :cond_13
    if-eqz v19, :cond_7

    .line 826
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto/16 :goto_5

    .line 828
    :catch_9
    move-exception v8

    .line 829
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 818
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 819
    :goto_a
    if-eqz v11, :cond_14

    .line 820
    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 822
    :cond_14
    if-eqz v13, :cond_15

    .line 823
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 825
    :cond_15
    if-eqz v19, :cond_16

    .line 826
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 830
    :cond_16
    :goto_b
    throw v21

    .line 828
    :catch_a
    move-exception v8

    .line 829
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 818
    .end local v8           #e:Ljava/io/IOException;
    .end local v19           #zip:Ljava/util/zip/ZipFile;
    .restart local v20       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v21

    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .restart local v19       #zip:Ljava/util/zip/ZipFile;
    goto :goto_a

    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v19           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v20       #zip:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v21

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .restart local v19       #zip:Ljava/util/zip/ZipFile;
    goto :goto_a

    .line 815
    .end local v9           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v19           #zip:Ljava/util/zip/ZipFile;
    .restart local v20       #zip:Ljava/util/zip/ZipFile;
    :catch_b
    move-exception v8

    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .restart local v19       #zip:Ljava/util/zip/ZipFile;
    goto :goto_9

    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v19           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v20       #zip:Ljava/util/zip/ZipFile;
    :catch_c
    move-exception v8

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .restart local v19       #zip:Ljava/util/zip/ZipFile;
    goto :goto_9

    .line 813
    .end local v9           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v19           #zip:Ljava/util/zip/ZipFile;
    .restart local v20       #zip:Ljava/util/zip/ZipFile;
    :catch_d
    move-exception v8

    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .restart local v19       #zip:Ljava/util/zip/ZipFile;
    goto :goto_8

    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v19           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v20       #zip:Ljava/util/zip/ZipFile;
    :catch_e
    move-exception v8

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .restart local v19       #zip:Ljava/util/zip/ZipFile;
    goto :goto_8

    .line 811
    .end local v9           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v19           #zip:Ljava/util/zip/ZipFile;
    .restart local v20       #zip:Ljava/util/zip/ZipFile;
    :catch_f
    move-exception v8

    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .restart local v19       #zip:Ljava/util/zip/ZipFile;
    goto :goto_7

    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v19           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v20       #zip:Ljava/util/zip/ZipFile;
    :catch_10
    move-exception v8

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .restart local v19       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_7

    .line 809
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v19           #zip:Ljava/util/zip/ZipFile;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v20       #zip:Ljava/util/zip/ZipFile;
    :catch_11
    move-exception v8

    move-object v11, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v19, v20

    .end local v20           #zip:Ljava/util/zip/ZipFile;
    .restart local v19       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_4
.end method

.method public static applyThemeIconsAPk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "ctx"
    .parameter "packagename"
    .parameter "componentName"

    .prologue
    .line 448
    if-eqz p0, :cond_0

    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 450
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 452
    .local v5, resources:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 457
    :goto_0
    if-nez v5, :cond_1

    .line 479
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #resources:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    return-void

    .line 453
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 455
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 462
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    if-nez p2, :cond_2

    .line 463
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "icons"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 465
    .local v1, dest_dir:Ljava/lang/StringBuilder;
    const-string v3, "theme/icons"

    .line 472
    .local v3, path:Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, destFile:Ljava/io/File;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 474
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 476
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->copyAssetsDir(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 467
    .end local v0           #destFile:Ljava/io/File;
    .end local v1           #dest_dir:Ljava/lang/StringBuilder;
    .end local v3           #path:Ljava/lang/String;
    :cond_2
    const-string v3, "theme/com.baidu.home2"

    .line 468
    .restart local v3       #path:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "com.baidu.home2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .restart local v1       #dest_dir:Ljava/lang/StringBuilder;
    goto :goto_2
.end method

.method public static applyWallpaper(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/ThemeInfo;)V
    .locals 14
    .parameter "context"
    .parameter "info"

    .prologue
    .line 328
    iget v11, p1, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mThemeType:I

    const/16 v12, 0x64

    if-le v11, v12, :cond_2

    .line 329
    if-eqz p0, :cond_0

    .line 374
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "wallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 375
    .local v10, path1:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 378
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, v0, v6

    .line 379
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "default_wallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 383
    const/4 v11, 0x1

    :try_start_0
    sput v11, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->mIsSelfBroadcast_wallpaper:I

    .line 385
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 388
    .local v5, fi:Ljava/io/FileInputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    .line 389
    .local v8, localWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 390
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v1}, Lcom/baidu/launcher/utils/Utilities;->rescaleBitmapForWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 435
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #f:Ljava/io/File;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #localWallpaperManager:Landroid/app/WallpaperManager;
    .end local v10           #path1:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 393
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #f:Ljava/io/File;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v10       #path1:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 394
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 395
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 396
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v11, "ThemeHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OutOfMemoryError happens "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 378
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 405
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #f:Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #path1:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    const-string v12, "wallpaper"

    invoke-static {v11, v12}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getSrcThemePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 406
    .local v9, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    .restart local v2       #dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 409
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/io/File;
    array-length v7, v0

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_2
    if-ge v6, v7, :cond_0

    aget-object v4, v0, v6

    .line 410
    .restart local v4       #f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "default_wallpaper"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 414
    const/4 v11, 0x1

    :try_start_1
    sput v11, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->mIsSelfBroadcast_wallpaper:I

    .line 416
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 419
    .restart local v5       #fi:Ljava/io/FileInputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    .line 420
    .restart local v8       #localWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 421
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, v1}, Lcom/baidu/launcher/utils/Utilities;->rescaleBitmapForWallpaper(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 424
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #fi:Ljava/io/FileInputStream;
    .end local v8           #localWallpaperManager:Landroid/app/WallpaperManager;
    :catch_2
    move-exception v3

    .line 425
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 426
    .end local v3           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 427
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v11, "ThemeHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OutOfMemoryError happens "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 409
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public static checkAccessory(Landroid/content/Context;)V
    .locals 10
    .parameter "ctx"

    .prologue
    .line 841
    const/4 v6, 0x0

    .line 842
    .local v6, useAssessory:Z
    const/4 v7, 0x0

    .line 844
    .local v7, useBg:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.baidu.home2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 846
    .local v2, dest_dir:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "res/drawable-hdpi/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 848
    .local v3, dir:Ljava/lang/String;
    sget v8, Lcom/baidu/launcher/app/LauncherApplication;->densityDpi:I

    const/16 v9, 0x140

    if-ne v8, v9, :cond_0

    .line 849
    const-string v8, "icontest"

    const-string v9, "getXhdpi"

    invoke-static {v8, v9}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "res/drawable-xhdpi/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 852
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v8, "bg_accessory.png"

    invoke-direct {v0, v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    .local v0, assessory_file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 854
    const/4 v6, 0x1

    .line 862
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 864
    .local v5, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 866
    .local v4, localEditor:Landroid/content/SharedPreferences$Editor;
    sget-object v8, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->PREFERENCE_USE_BG:Ljava/lang/String;

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 868
    sget-object v8, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->PREFERENCE_USE_ACCESSORY:Ljava/lang/String;

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 870
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 871
    return-void

    .line 856
    .end local v4           #localEditor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v8, "bg.png"

    invoke-direct {v1, v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .local v1, bg_file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 858
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static checkDelete(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "aContext"
    .parameter "aKey"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1041
    .local p2, aComponentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "\u9ed8\u8ba4V1"

    .line 1042
    .local v0, default_name:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1043
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v3, ""

    .line 1044
    .local v3, name:Ljava/lang/String;
    const-string v2, ""

    .line 1045
    .local v2, key:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1046
    .local v5, result:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1047
    sget-object v6, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #name:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1048
    .restart local v3       #name:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1049
    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1050
    if-eqz p1, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1051
    const/4 v5, 0x1

    .line 1056
    :cond_0
    return v5

    .line 1046
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static copyAssetsDir(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .parameter "res"
    .parameter "srcName"
    .parameter "dst"

    .prologue
    .line 484
    const/4 v15, 0x0

    .line 485
    .local v15, in:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 488
    .local v12, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 489
    .local v11, files:[Ljava/lang/String;
    if-eqz v11, :cond_0

    array-length v0, v11

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 491
    :cond_0
    move-object v3, v11

    .local v3, arr$:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    aget-object v10, v3, v14

    .line 492
    .local v10, filename:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->copyAssetsDir(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 496
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #filename:Ljava/lang/String;
    .end local v14           #i$:I
    .end local v17           #len$:I
    :cond_1
    move-object/from16 v18, p1

    .line 497
    .local v18, path:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    .line 498
    move-object/from16 v5, p2

    .line 499
    .local v5, currentOutFilePath:Ljava/lang/String;
    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v8, v19, 0x1

    .line 500
    .local v8, dext:I
    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 501
    .local v6, dex:I
    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 502
    .local v7, dex2:I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v6, v0, :cond_2

    if-le v7, v6, :cond_2

    .line 503
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 505
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v4, currentFileDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 508
    .end local v4           #currentFileDir:Ljava/io/File;
    :cond_2
    new-instance v13, Ljava/io/FileOutputStream;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 510
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .local v13, fos:Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 512
    .local v16, len:I
    :goto_1
    :try_start_1
    sget-object v19, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->buffer:[B

    const/16 v20, 0x0

    const/16 v21, 0x4000

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v16

    if-lez v16, :cond_5

    .line 513
    sget-object v19, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->buffer:[B

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_1

    .line 519
    :catch_0
    move-exception v9

    move-object v12, v13

    .line 520
    .end local v5           #currentOutFilePath:Ljava/lang/String;
    .end local v6           #dex:I
    .end local v7           #dex2:I
    .end local v8           #dext:I
    .end local v11           #files:[Ljava/lang/String;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v16           #len:I
    .end local v18           #path:Ljava/lang/String;
    .local v9, e:Ljava/lang/IllegalStateException;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    if-eqz v12, :cond_3

    .line 528
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 530
    :cond_3
    if-eqz v15, :cond_4

    .line 531
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 537
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :cond_4
    :goto_3
    return-void

    .line 516
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #currentOutFilePath:Ljava/lang/String;
    .restart local v6       #dex:I
    .restart local v7       #dex2:I
    .restart local v8       #dext:I
    .restart local v11       #files:[Ljava/lang/String;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #len:I
    .restart local v18       #path:Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 517
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    move-object v12, v13

    .line 527
    .end local v5           #currentOutFilePath:Ljava/lang/String;
    .end local v6           #dex:I
    .end local v7           #dex2:I
    .end local v8           #dext:I
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v16           #len:I
    .end local v18           #path:Ljava/lang/String;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :cond_6
    if-eqz v12, :cond_7

    .line 528
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 530
    :cond_7
    if-eqz v15, :cond_4

    .line 531
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 533
    :catch_1
    move-exception v9

    .line 534
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 533
    .end local v11           #files:[Ljava/lang/String;
    .local v9, e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v9

    .line 534
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 521
    .end local v9           #e:Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 522
    .local v9, e:Ljava/lang/NullPointerException;
    :goto_4
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 527
    if-eqz v12, :cond_8

    .line 528
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 530
    :cond_8
    if-eqz v15, :cond_4

    .line 531
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 533
    :catch_4
    move-exception v9

    .line 534
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 523
    .end local v9           #e:Ljava/io/IOException;
    :catch_5
    move-exception v9

    .line 524
    .restart local v9       #e:Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 527
    if-eqz v12, :cond_9

    .line 528
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 530
    :cond_9
    if-eqz v15, :cond_4

    .line 531
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 533
    :catch_6
    move-exception v9

    .line 534
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 526
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 527
    :goto_6
    if-eqz v12, :cond_a

    .line 528
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 530
    :cond_a
    if-eqz v15, :cond_b

    .line 531
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 535
    :cond_b
    :goto_7
    throw v19

    .line 533
    :catch_7
    move-exception v9

    .line 534
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 526
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #currentOutFilePath:Ljava/lang/String;
    .restart local v6       #dex:I
    .restart local v7       #dex2:I
    .restart local v8       #dext:I
    .restart local v11       #files:[Ljava/lang/String;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v16       #len:I
    .restart local v18       #path:Ljava/lang/String;
    :catchall_1
    move-exception v19

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 523
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v9

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 521
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v9

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 519
    .end local v5           #currentOutFilePath:Ljava/lang/String;
    .end local v6           #dex:I
    .end local v7           #dex2:I
    .end local v8           #dext:I
    .end local v11           #files:[Ljava/lang/String;
    .end local v16           #len:I
    .end local v18           #path:Ljava/lang/String;
    :catch_a
    move-exception v9

    goto :goto_2
.end method

.method public static copyAssetsFile(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "res"
    .parameter "srcName"
    .parameter "dst"

    .prologue
    .line 540
    const/4 v4, 0x0

    .line 541
    .local v4, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 543
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 544
    const/16 v6, 0x4000

    new-array v0, v6, [B

    .line 545
    .local v0, buffer:[B
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 546
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 548
    .local v5, len:I
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x4000

    :try_start_1
    invoke-virtual {v4, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_2

    .line 549
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    .line 553
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 554
    .end local v0           #buffer:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v5           #len:I
    .local v1, e:Ljava/lang/IllegalStateException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 561
    if-eqz v2, :cond_0

    .line 562
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 564
    :cond_0
    if-eqz v4, :cond_1

    .line 565
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 571
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_1
    :goto_2
    return-void

    .line 551
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #len:I
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 552
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 561
    if-eqz v3, :cond_3

    .line 562
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 564
    :cond_3
    if-eqz v4, :cond_4

    .line 565
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v2, v3

    .line 569
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 567
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 568
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 570
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 567
    .end local v0           #buffer:[B
    .end local v5           #len:I
    .local v1, e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 568
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 555
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 556
    .local v1, e:Ljava/lang/NullPointerException;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 561
    if-eqz v2, :cond_5

    .line 562
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 564
    :cond_5
    if-eqz v4, :cond_1

    .line 565
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 567
    :catch_4
    move-exception v1

    .line 568
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 557
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 558
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 561
    if-eqz v2, :cond_6

    .line 562
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 564
    :cond_6
    if-eqz v4, :cond_1

    .line 565
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 567
    :catch_6
    move-exception v1

    .line 568
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 560
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 561
    :goto_5
    if-eqz v2, :cond_7

    .line 562
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 564
    :cond_7
    if-eqz v4, :cond_8

    .line 565
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 569
    :cond_8
    :goto_6
    throw v6

    .line 567
    :catch_7
    move-exception v1

    .line 568
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 560
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #len:I
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 557
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 555
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 553
    .end local v0           #buffer:[B
    .end local v5           #len:I
    :catch_a
    move-exception v1

    goto :goto_1
.end method

.method public static deleteTheme(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "aContext"
    .parameter "aId"
    .parameter "aKey"
    .parameter "aPath"

    .prologue
    .line 996
    const/4 v6, 0x0

    .line 998
    .local v6, restore:Z
    const-string v10, "com.baidu"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_0

    .line 1000
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1001
    .local v5, packageURI:Landroid/net/Uri;
    const-string v10, "ThemeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "package path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.DELETE"

    invoke-direct {v4, v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1003
    .local v4, intent_delete:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1005
    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1030
    .end local v4           #intent_delete:Landroid/content/Intent;
    .end local v5           #packageURI:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1008
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v8, themeString:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1012
    new-instance v7, Ljava/lang/StringBuffer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "theme_id=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v7, themeContentString:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1016
    if-eqz p2, :cond_1

    const-string v10, ""

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1017
    new-instance v10, Ljava/io/File;

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getSrcThemePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 1020
    :cond_1
    const/4 v9, 0x0

    .line 1022
    .local v9, url:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 1023
    const-string v10, "theme/ICON"

    move-object/from16 v0, p3

    invoke-static {p0, v0, v10}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadIdByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 1024
    .local v1, downloadId:J
    invoke-static {p0, v1, v2}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownload(Landroid/content/Context;J)V

    .line 1025
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v11}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->resetDownloadState(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1027
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.baidu.thememanager.action.downloadstatechange"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static deleteTheme(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "aActivity"
    .parameter "aId"
    .parameter "aKey"
    .parameter "aPath"

    .prologue
    .line 951
    const/4 v6, 0x0

    .line 953
    .local v6, restore:Z
    const-string v10, "com.baidu"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_0

    .line 955
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 956
    .local v5, packageURI:Landroid/net/Uri;
    const-string v10, "ThemeHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "package path: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.DELETE"

    invoke-direct {v4, v10, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 958
    .local v4, intent_delete:Landroid/content/Intent;
    const/high16 v10, 0x1000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 960
    const/16 v10, 0x79

    invoke-virtual {p0, v4, v10}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 986
    .end local v4           #intent_delete:Landroid/content/Intent;
    .end local v5           #packageURI:Landroid/net/Uri;
    :goto_0
    return-void

    .line 964
    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 965
    .local v8, themeString:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 968
    new-instance v7, Ljava/lang/StringBuffer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "theme_id=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 970
    .local v7, themeContentString:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 972
    if-eqz p2, :cond_1

    const-string v10, ""

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 973
    new-instance v10, Ljava/io/File;

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getSrcThemePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 976
    :cond_1
    const/4 v9, 0x0

    .line 978
    .local v9, url:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 979
    const-string v10, "theme/ICON"

    move-object/from16 v0, p3

    invoke-static {p0, v0, v10}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadIdByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 980
    .local v1, downloadId:J
    invoke-static {p0, v1, v2}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownload(Landroid/content/Context;J)V

    .line 981
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, p0, v11}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->resetDownloadState(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 983
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.baidu.thememanager.action.downloadstatechange"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 984
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public static deleteTheme(Landroid/support/v4/app/FragmentActivity;Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "aActivity"
    .parameter "aItemData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 882
    .local p2, aComponentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    .line 883
    .local v3, title:Ljava/lang/String;
    const-string v1, ""

    .line 885
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 887
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mKey:Ljava/lang/String;

    invoke-static {v4, v5, p2}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->checkDelete(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    .line 890
    .local v2, need_restore:Z
    if-eqz v2, :cond_0

    .line 891
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 896
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const v5, 0x1030132

    invoke-direct {v4, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;

    invoke-direct {v6, p1, p0, v2}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$2;-><init>(Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;Landroid/support/v4/app/FragmentActivity;Z)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$1;

    invoke-direct {v6}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$1;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 940
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 941
    return-void

    .line 893
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static deleteThemeWithRestore(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "aActivity"
    .parameter "aId"
    .parameter "aKey"
    .parameter "aPath"

    .prologue
    const/4 v8, 0x1

    .line 1069
    const-string v0, "\u9ed8\u8ba4V1"

    .line 1070
    .local v0, default_name:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1071
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v2, ""

    .line 1072
    .local v2, name:Ljava/lang/String;
    const-string v1, ""

    .line 1073
    .local v1, key:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1074
    .local v4, result:Z
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->deleteTheme(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 1076
    const-string v6, "com.baidu"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-le v6, v7, :cond_0

    .line 1087
    :goto_0
    return v4

    .line 1080
    :cond_0
    new-instance v5, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;

    invoke-direct {v5, p0}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 1081
    .local v5, task:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;
    instance-of v6, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    if-eqz v6, :cond_1

    .line 1082
    invoke-virtual {v5, v8}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->needFinish(Z)V

    .line 1084
    :cond_1
    invoke-virtual {v5, v8}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->needReturnHome(Z)V

    .line 1085
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static restoreDefaultTheme(Landroid/content/Context;Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;)I
    .locals 11
    .parameter "context"
    .parameter "callBack"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 245
    const/4 v1, 0x1

    .line 246
    .local v1, i:I
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->restoreDefaultWallpaper(Landroid/content/Context;)V

    .line 247
    if-eqz p1, :cond_0

    .line 248
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-interface {p1, v1}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;->notifyDialogProgress(I)V

    move v1, v2

    .line 251
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 253
    if-eqz p1, :cond_1

    .line 254
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    invoke-interface {p1, v1}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;->notifyDialogProgress(I)V

    move v1, v2

    .line 257
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 258
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 259
    .local v3, localEditor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "\u9ed8\u8ba4V1"

    .line 260
    .local v0, defaultName:Ljava/lang/String;
    const-string v5, "theme_default"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    const-string v5, "theme_default_title"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 263
    sget-object v5, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreferenceMap:Ljava/util/HashMap;

    sget-object v6, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentEntry:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreferenceMap:Ljava/util/HashMap;

    sget-object v7, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentEntry:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_title"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 273
    sget-object v5, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreferenceMap:Ljava/util/HashMap;

    sget-object v6, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentEntry:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreferenceMap:Ljava/util/HashMap;

    sget-object v7, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentEntry:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_title"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 283
    sget-object v5, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->PREFERENCE_USE_BG:Ljava/lang/String;

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 285
    sget-object v5, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->PREFERENCE_USE_ACCESSORY:Ljava/lang/String;

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return v8
.end method

.method public static restoreDefaultWallpaper(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 301
    .local v6, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 303
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 304
    .local v4, maxDim:I
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 305
    .local v5, minDim:I
    mul-int/lit8 v3, v5, 0x2

    .line 306
    .local v3, mWallpaperWidth:I
    move v2, v4

    .line 307
    .local v2, mWallpaperHeight:I
    invoke-virtual {v6, v3, v2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 310
    const v7, 0x7f020109

    :try_start_0
    invoke-static {p0, v7}, Lcom/baidu/launcher/utils/Utilities;->rescaleBitmapForWallpaper(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized unzipTheme(Ljava/util/zip/ZipFile;Landroid/content/Context;)Z
    .locals 21
    .parameter "zip"
    .parameter "ctx"

    .prologue
    .line 667
    const-class v19, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;

    monitor-enter v19

    const/4 v11, 0x0

    .line 668
    .local v11, flag:Z
    :try_start_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 670
    .local v10, filePath:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_3

    .line 671
    new-instance v17, Ljava/io/File;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 672
    .local v17, tmpFileDir:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 673
    const/4 v14, 0x0

    .line 674
    .local v14, in:Ljava/io/DataInputStream;
    const/4 v12, 0x0

    .line 675
    .local v12, fos:Ljava/io/FileOutputStream;
    const/16 v18, 0x4000

    move/from16 v0, v18

    new-array v2, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    .local v2, buffer:[B
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    .local v7, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    move-object v13, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .local v13, fos:Ljava/io/FileOutputStream;
    move-object v15, v14

    .line 678
    .end local v14           #in:Ljava/io/DataInputStream;
    .local v15, in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 679
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 680
    .local v8, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_0

    .line 682
    new-instance v14, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8

    .line 683
    .end local v15           #in:Ljava/io/DataInputStream;
    .restart local v14       #in:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 684
    .local v9, entryName:Ljava/lang/String;
    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 685
    .local v5, dex:I
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 686
    .local v4, currentOutFilePath:Ljava/lang/String;
    if-lez v5, :cond_1

    .line 687
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 689
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 690
    .local v3, currentFileDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 692
    .end local v3           #currentFileDir:Ljava/io/File;
    :cond_1
    new-instance v12, Ljava/io/FileOutputStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_9

    .line 693
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 694
    .local v16, len:I
    :goto_1
    const/16 v18, 0x0

    const/16 v20, 0x4000

    :try_start_4
    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v14, v2, v0, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v16

    if-lez v16, :cond_4

    .line 695
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v12, v2, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    .line 703
    .end local v4           #currentOutFilePath:Ljava/lang/String;
    .end local v5           #dex:I
    .end local v7           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v9           #entryName:Ljava/lang/String;
    .end local v16           #len:I
    :catch_0
    move-exception v6

    .line 704
    .local v6, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 711
    if-eqz v14, :cond_2

    .line 712
    :try_start_6
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 714
    :cond_2
    if-eqz v12, :cond_3

    .line 715
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 722
    .end local v2           #buffer:[B
    .end local v6           #e:Ljava/io/IOException;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v14           #in:Ljava/io/DataInputStream;
    .end local v17           #tmpFileDir:Ljava/io/File;
    :cond_3
    :goto_3
    monitor-exit v19

    return v11

    .line 697
    .restart local v2       #buffer:[B
    .restart local v4       #currentOutFilePath:Ljava/lang/String;
    .restart local v5       #dex:I
    .restart local v7       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v9       #entryName:Ljava/lang/String;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #in:Ljava/io/DataInputStream;
    .restart local v16       #len:I
    .restart local v17       #tmpFileDir:Ljava/io/File;
    :cond_4
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 698
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileDescriptor;->sync()V

    .line 699
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 700
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v13, v12

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    move-object v15, v14

    .line 701
    .end local v14           #in:Ljava/io/DataInputStream;
    .restart local v15       #in:Ljava/io/DataInputStream;
    goto/16 :goto_0

    .line 702
    .end local v4           #currentOutFilePath:Ljava/lang/String;
    .end local v5           #dex:I
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v9           #entryName:Ljava/lang/String;
    .end local v16           #len:I
    :cond_5
    const/4 v11, 0x1

    .line 711
    if-eqz v15, :cond_6

    .line 712
    :try_start_8
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V

    .line 714
    :cond_6
    if-eqz v13, :cond_3

    .line 715
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 717
    :catch_1
    move-exception v6

    .line 718
    .local v6, e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 667
    .end local v2           #buffer:[B
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v10           #filePath:Ljava/lang/StringBuffer;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v15           #in:Ljava/io/DataInputStream;
    .end local v17           #tmpFileDir:Ljava/io/File;
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 717
    .restart local v2       #buffer:[B
    .local v6, e:Ljava/io/IOException;
    .restart local v10       #filePath:Ljava/lang/StringBuffer;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #in:Ljava/io/DataInputStream;
    .restart local v17       #tmpFileDir:Ljava/io/File;
    :catch_2
    move-exception v6

    .line 718
    .local v6, e:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 705
    .end local v6           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 706
    .local v6, e:Ljava/lang/IllegalStateException;
    :goto_4
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 711
    if-eqz v14, :cond_7

    .line 712
    :try_start_c
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 714
    :cond_7
    if-eqz v12, :cond_3

    .line 715
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_3

    .line 717
    :catch_4
    move-exception v6

    .line 718
    .local v6, e:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 707
    .end local v6           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 708
    .local v6, e:Ljava/lang/NullPointerException;
    :goto_5
    :try_start_e
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 711
    if-eqz v14, :cond_8

    .line 712
    :try_start_f
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 714
    :cond_8
    if-eqz v12, :cond_3

    .line 715
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_3

    .line 717
    :catch_6
    move-exception v6

    .line 718
    .local v6, e:Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_3

    .line 710
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v18

    .line 711
    :goto_6
    if-eqz v14, :cond_9

    .line 712
    :try_start_11
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 714
    :cond_9
    if-eqz v12, :cond_a

    .line 715
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 719
    :cond_a
    :goto_7
    :try_start_12
    throw v18

    .line 717
    :catch_7
    move-exception v6

    .line 718
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_7

    .line 710
    .end local v6           #e:Ljava/lang/Exception;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v14           #in:Ljava/io/DataInputStream;
    .restart local v7       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v15       #in:Ljava/io/DataInputStream;
    :catchall_2
    move-exception v18

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #in:Ljava/io/DataInputStream;
    .restart local v14       #in:Ljava/io/DataInputStream;
    goto :goto_6

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v18

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 707
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v14           #in:Ljava/io/DataInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v15       #in:Ljava/io/DataInputStream;
    :catch_8
    move-exception v6

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #in:Ljava/io/DataInputStream;
    .restart local v14       #in:Ljava/io/DataInputStream;
    goto :goto_5

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 705
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v14           #in:Ljava/io/DataInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v15       #in:Ljava/io/DataInputStream;
    :catch_a
    move-exception v6

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #in:Ljava/io/DataInputStream;
    .restart local v14       #in:Ljava/io/DataInputStream;
    goto :goto_4

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v6

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 703
    .end local v8           #entry:Ljava/util/zip/ZipEntry;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v14           #in:Ljava/io/DataInputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v15       #in:Ljava/io/DataInputStream;
    :catch_c
    move-exception v6

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    move-object v14, v15

    .end local v15           #in:Ljava/io/DataInputStream;
    .restart local v14       #in:Ljava/io/DataInputStream;
    goto/16 :goto_2

    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #entry:Ljava/util/zip/ZipEntry;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v6

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method
