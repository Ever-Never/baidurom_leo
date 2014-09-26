.class public Lcom/android/systemui/statusbar/LoadThemeResource;
.super Ljava/lang/Object;
.source "LoadThemeResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/LoadThemeResource$BatteryPng;
    }
.end annotation


# static fields
.field private static final BG_RESOURCE_DRAWABLE_FIELD_NAME:Ljava/lang/String; = "mBGDrawable"

.field private static final BG_RESOURCE_ID_FIELD_NAME:Ljava/lang/String; = "mBackgroundResource"

.field private static final COLORFILENAME:Ljava/lang/String; = "theme_values.xml"

.field private static final COLOR_RESOURCE_ID_FIELD_NAME:Ljava/lang/String; = "mTextColor"

.field private static final RESOURCE_ID_FIELD_NAME:Ljava/lang/String; = "mResource"

.field private static final RESOURCE_ID_METHOD_NAME:Ljava/lang/String; = "updateDrawable"

.field private static final THEMECOLOR:Ljava/lang/String; = "framework-res"

.field private static final THEMEFILENAME:Ljava/lang/String; = "com.android.systemui"

.field private static final THEMEPATH:Ljava/lang/String; = "/data/data/com.baidu.thememanager.ui/files"

.field private static final THEMETYPEFACE:Ljava/lang/String; = "/fonts/"

.field private static final TYPEFACENAME:Ljava/lang/String; = "Arial.ttf"

.field private static fileNamePath:Ljava/lang/String;

.field private static isOkey:Z

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static listData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private static mCtx:Landroid/content/Context;

.field private static final mLoadThemeResource:Lcom/android/systemui/statusbar/LoadThemeResource;

.field private static mNumberData:[B

.field private static mTargetBgExists:Z

.field private static mThemeBatteryChargeDrawable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static mThemeColorValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static tempFileName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/LoadThemeResource;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/LoadThemeResource;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->mLoadThemeResource:Lcom/android/systemui/statusbar/LoadThemeResource;

    .line 76
    sput-boolean v1, Lcom/android/systemui/statusbar/LoadThemeResource;->mTargetBgExists:Z

    .line 77
    const-string v0, ""

    sput-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->fileNamePath:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->list:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->listData:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->tempFileName:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->mThemeBatteryChargeDrawable:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->mThemeColorValues:Ljava/util/HashMap;

    .line 105
    sput-boolean v1, Lcom/android/systemui/statusbar/LoadThemeResource;->isOkey:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static LoadResourcesColorFromZip()V
    .locals 10

    .prologue
    .line 146
    const/4 v5, 0x0

    .line 147
    .local v5, zipFile:Ljava/util/zip/ZipFile;
    const/4 v2, 0x0

    .line 149
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    new-instance v7, Ljava/io/File;

    const-string v8, "/data/data/com.baidu.thememanager.ui/files"

    const-string v9, "framework-res"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 150
    .end local v5           #zipFile:Ljava/util/zip/ZipFile;
    .local v6, zipFile:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 153
    .local v1, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 156
    .local v4, zipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 160
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, name:Ljava/lang/String;
    const-string v7, "theme_values.xml"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 163
    invoke-virtual {v6, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 165
    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Lcom/android/systemui/statusbar/LoadThemeResource;->parseXmlFindColor(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 170
    .end local v1           #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #zipEntry:Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 171
    .end local v6           #zipFile:Ljava/util/zip/ZipFile;
    .local v0, e:Ljava/io/IOException;
    .restart local v5       #zipFile:Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    if-eqz v5, :cond_1

    .line 179
    :try_start_3
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 181
    :cond_1
    if-eqz v2, :cond_2

    .line 182
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 188
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 178
    .end local v5           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v1       #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v6       #zipFile:Ljava/util/zip/ZipFile;
    :cond_3
    if-eqz v6, :cond_4

    .line 179
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    .line 181
    :cond_4
    if-eqz v2, :cond_5

    .line 182
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    move-object v5, v6

    .line 186
    .end local v6           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v5       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 184
    .end local v5           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v6       #zipFile:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v0

    .line 185
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 187
    .end local v6           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v5       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 184
    .end local v1           #enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :catch_2
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 173
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 175
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    if-eqz v5, :cond_6

    .line 179
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 181
    :cond_6
    if-eqz v2, :cond_2

    .line 182
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 184
    :catch_4
    move-exception v0

    .line 185
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 177
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 178
    :goto_4
    if-eqz v5, :cond_7

    .line 179
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 181
    :cond_7
    if-eqz v2, :cond_8

    .line 182
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 186
    :cond_8
    :goto_5
    throw v7

    .line 184
    :catch_5
    move-exception v0

    .line 185
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 177
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v6       #zipFile:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v5       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 173
    .end local v5           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v6       #zipFile:Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v0

    move-object v5, v6

    .end local v6           #zipFile:Ljava/util/zip/ZipFile;
    .restart local v5       #zipFile:Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 170
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->tempFileName:Ljava/util/List;

    return-object v0
.end method

.method private static clearTempFile()V
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->tempFileName:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->tempFileName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 514
    new-instance v0, Lcom/android/systemui/statusbar/LoadThemeResource$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/LoadThemeResource$1;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LoadThemeResource$1;->start()V

    .line 526
    :cond_0
    return-void
.end method

.method public static findPathByName(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .parameter "file"
    .parameter "resName"

    .prologue
    .line 379
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 380
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 381
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 382
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_1

    .line 401
    .end local v1           #files:[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 383
    .restart local v1       #files:[Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 384
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 385
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, path:Ljava/lang/String;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 387
    const-string v4, "_"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "9"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".png"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 388
    const-string v4, "_"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "9"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".png"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, baseResName:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "transparent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 390
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/statusbar/LoadThemeResource;->fileNamePath:Ljava/lang/String;

    goto/16 :goto_0

    .line 395
    .end local v0           #baseResName:Ljava/lang/String;
    .end local v3           #path:Ljava/lang/String;
    :cond_2
    aget-object v4, v1, v2

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/LoadThemeResource;->findPathByName(Ljava/io/File;Ljava/lang/String;)V

    .line 383
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public static findTargetByName(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .parameter "file"
    .parameter "resName"

    .prologue
    .line 357
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 360
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 361
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 364
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/statusbar/LoadThemeResource;->mTargetBgExists:Z

    .line 375
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    return-void

    .line 369
    .restart local v0       #files:[Ljava/io/File;
    .restart local v1       #i:I
    :cond_1
    aget-object v3, v0, v1

    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/LoadThemeResource;->findTargetByName(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static generateDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "is"

    .prologue
    .line 500
    if-eqz p0, :cond_0

    .line 501
    const-string v0, "src"

    invoke-static {p0, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBitmapFromTheme(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "ctx"
    .parameter "resName"

    .prologue
    const/4 v0, 0x0

    .line 424
    const/4 v3, 0x0

    .line 426
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/LoadThemeResource;->isFileExixst()Ljava/io/File;

    move-result-object v2

    .line 427
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v5

    if-nez v5, :cond_1

    .line 449
    if-eqz v3, :cond_0

    .line 450
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 457
    .end local v2           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 452
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 453
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 431
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/LoadThemeResource;->findPathByName(Ljava/io/File;Ljava/lang/String;)V

    .line 433
    const-string v5, ""

    sget-object v6, Lcom/android/systemui/statusbar/LoadThemeResource;->fileNamePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 436
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    sget-object v5, Lcom/android/systemui/statusbar/LoadThemeResource;->fileNamePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 438
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 439
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_3
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v0

    .line 449
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 450
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    move-object v3, v4

    .line 454
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 452
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 453
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 449
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_3
    if-eqz v3, :cond_0

    .line 450
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 452
    :catch_2
    move-exception v1

    .line 453
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 444
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    :catch_3
    move-exception v1

    .line 445
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 449
    if-eqz v3, :cond_0

    .line 450
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 452
    :catch_4
    move-exception v1

    .line 453
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 447
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 449
    :goto_3
    if-eqz v3, :cond_4

    .line 450
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 454
    :cond_4
    :goto_4
    throw v5

    .line 452
    :catch_5
    move-exception v1

    .line 453
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 447
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 444
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static getDateByName(Ljava/lang/String;)[B
    .locals 7
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    const/4 v3, 0x0

    .line 541
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 542
    .local v0, data:[B
    const/4 v5, -0x1

    .line 543
    .local v5, len:I
    if-eqz p0, :cond_1

    :try_start_0
    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 544
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/data/com.baidu.thememanager.ui/files"

    invoke-direct {v2, v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 547
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 549
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 558
    if-eqz v4, :cond_0

    .line 559
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 566
    .end local v0           #data:[B
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_1
    return-object v0

    .line 561
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v0       #data:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 562
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 558
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_1
    if-eqz v3, :cond_2

    .line 559
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 566
    :cond_2
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 561
    :catch_1
    move-exception v1

    .line 562
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 554
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 555
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 558
    if-eqz v3, :cond_2

    .line 559
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 561
    :catch_3
    move-exception v1

    .line 562
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 557
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 558
    :goto_4
    if-eqz v3, :cond_3

    .line 559
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 563
    :cond_3
    :goto_5
    throw v6

    .line 561
    :catch_4
    move-exception v1

    .line 562
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 557
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 554
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static getDrawableFromTheme(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "ctx"
    .parameter "resName"

    .prologue
    const/4 v0, 0x0

    .line 462
    const/4 v3, 0x0

    .line 464
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/LoadThemeResource;->isFileExixst()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 465
    .local v2, file:Ljava/io/File;
    if-nez v2, :cond_1

    .line 488
    if-eqz v3, :cond_0

    .line 489
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 496
    .end local v2           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 491
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 492
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 468
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v5

    if-nez v5, :cond_2

    .line 488
    if-eqz v3, :cond_0

    .line 489
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 491
    :catch_1
    move-exception v1

    .line 492
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 472
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_4
    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/LoadThemeResource;->findPathByName(Ljava/io/File;Ljava/lang/String;)V

    .line 474
    const-string v5, ""

    sget-object v6, Lcom/android/systemui/statusbar/LoadThemeResource;->fileNamePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 476
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    sget-object v5, Lcom/android/systemui/statusbar/LoadThemeResource;->fileNamePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 478
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 479
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_5
    invoke-static {v4}, Lcom/android/systemui/statusbar/LoadThemeResource;->generateDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v0

    .line 488
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 489
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_1
    move-object v3, v4

    .line 493
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 491
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 492
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 488
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_4
    if-eqz v3, :cond_0

    .line 489
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 491
    :catch_3
    move-exception v1

    .line 492
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 484
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    :catch_4
    move-exception v1

    .line 485
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 488
    if-eqz v3, :cond_0

    .line 489
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_0

    .line 491
    :catch_5
    move-exception v1

    .line 492
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 487
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 488
    :goto_3
    if-eqz v3, :cond_5

    .line 489
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 493
    :cond_5
    :goto_4
    throw v5

    .line 491
    :catch_6
    move-exception v1

    .line 492
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 487
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 484
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/LoadThemeResource;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 88
    sput-object p0, Lcom/android/systemui/statusbar/LoadThemeResource;->mCtx:Landroid/content/Context;

    .line 89
    sget-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->mLoadThemeResource:Lcom/android/systemui/statusbar/LoadThemeResource;

    return-object v0
.end method

.method public static getNumberData()[B
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->mNumberData:[B

    return-object v0
.end method

.method private static getSurfixName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 529
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 534
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getThemeColorValues()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    sget-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->mThemeColorValues:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getThemeMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->mThemeBatteryChargeDrawable:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getTypefaceFromTheme(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 4
    .parameter "applicationContext"

    .prologue
    .line 724
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.baidu.thememanager.ui/files/fonts/"

    const-string v3, "Arial.ttf"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    .local v1, typefaceFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 734
    :goto_0
    return-object v2

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 734
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isFileExixst()Ljava/io/File;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 343
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.baidu.thememanager.ui/files/com.android.systemui"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    .local v0, file:Ljava/io/File;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 351
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 347
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 348
    goto :goto_0
.end method

.method public static isOkey()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/systemui/statusbar/LoadThemeResource;->isOkey:Z

    return v0
.end method

.method public static isTargetFileExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "ctx"
    .parameter "resName"

    .prologue
    .line 406
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/LoadThemeResource;->isFileExixst()Ljava/io/File;

    move-result-object v1

    .line 407
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 409
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/LoadThemeResource;->findTargetByName(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/LoadThemeResource;->mTargetBgExists:Z

    return v2

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseXmlFindColor(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .parameter "is"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    if-eqz p0, :cond_1

    .line 193
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 194
    .local v1, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v1, p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 195
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 197
    .local v0, eventCode:I
    :goto_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 198
    packed-switch v0, :pswitch_data_0

    .line 217
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 203
    :pswitch_1
    const-string v2, "color"

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    sget-object v2, Lcom/android/systemui/statusbar/LoadThemeResource;->mThemeColorValues:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 221
    .end local v0           #eventCode:I
    .end local v1           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    return-void

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static relaseBattery()V
    .locals 1

    .prologue
    .line 507
    sget-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->mThemeBatteryChargeDrawable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 508
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->mNumberData:[B

    .line 509
    sget-object v0, Lcom/android/systemui/statusbar/LoadThemeResource;->mThemeColorValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 510
    return-void
.end method

.method public static resetBackgroundResource(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 767
    if-nez p0, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const/4 v1, 0x0

    .line 771
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .local v2, superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 773
    :try_start_0
    const-string v3, "mBackgroundResource"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 774
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 775
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 777
    const-string v3, "mBGDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 778
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 779
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 781
    :catch_0
    move-exception v3

    .line 771
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 783
    :catch_1
    move-exception v0

    .line 784
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 785
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 786
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method public static resetColorResource(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 829
    if-nez p0, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    const/4 v1, 0x0

    .line 833
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .local v2, superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 834
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.widget.TextView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 833
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 838
    :cond_2
    :try_start_0
    const-string v3, "mCurTextColor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 839
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 840
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 841
    const-string v3, "mTextColor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 842
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 843
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 848
    :catch_0
    move-exception v3

    goto :goto_2

    .line 850
    :catch_1
    move-exception v0

    .line 851
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 852
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 853
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method public static resetResource(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 792
    if-nez p0, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    const/4 v1, 0x0

    .line 795
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 796
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 798
    .local v3, nullObj:Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .local v4, superClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    const-class v5, Ljava/lang/Object;

    if-eq v4, v5, :cond_0

    .line 799
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.widget.ImageView"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 798
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    .line 803
    :cond_2
    :try_start_0
    const-string v5, "mResource"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 804
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 805
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 808
    const-string v5, "updateDrawable"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 809
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 810
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 813
    :catch_0
    move-exception v5

    goto :goto_2

    .line 815
    :catch_1
    move-exception v0

    .line 816
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 817
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 818
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 819
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 820
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 821
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 822
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public static setOkey(Z)V
    .locals 0
    .parameter "ok"

    .prologue
    .line 112
    sput-boolean p0, Lcom/android/systemui/statusbar/LoadThemeResource;->isOkey:Z

    .line 113
    return-void
.end method
