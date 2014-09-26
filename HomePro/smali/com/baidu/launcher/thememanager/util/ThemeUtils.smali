.class public Lcom/baidu/launcher/thememanager/util/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final LOCK:Ljava/lang/String; = "lock"

.field private static final MIN_SIZE:I = 0xa

.field private static final PREVIEW:Ljava/lang/String; = "preview"

.field private static final PREVIE_LAUNCHER:Ljava/lang/String; = "preview_launcher"

.field private static final SUPPORT_FILE_TYPE:[Ljava/lang/String; = null

.field private static final SUPPORT_TEMP_TYPE:[Ljava/lang/String; = null

.field private static final SUPPORT_WALLPAPER_TYPE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ThemeUtils"

.field private static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static mPresetFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final scanScape:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "mtz"

    aput-object v1, v0, v3

    const-string v1, "btp"

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->SUPPORT_FILE_TYPE:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lockscreen"

    aput-object v1, v0, v3

    const-string v1, "icons"

    aput-object v1, v0, v4

    const-string v1, "statusbar"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "fonts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wallpaper"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lock_wallpaper"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->scanScape:[Ljava/lang/String;

    .line 63
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "jpg"

    aput-object v1, v0, v3

    const-string v1, "png"

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->SUPPORT_WALLPAPER_TYPE:[Ljava/lang/String;

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "jpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->SUPPORT_TEMP_TYPE:[Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->mPresetFolder:Ljava/util/ArrayList;

    .line 74
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->mPresetFolder:Ljava/util/ArrayList;

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->mPresetFolder:Ljava/util/ArrayList;

    const-string v1, "preview"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->mPresetFolder:Ljava/util/ArrayList;

    const-string v1, "fonts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->mPresetFolder:Ljava/util/ArrayList;

    const-string v1, "ringtones"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static VersionCompare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .parameter "context"
    .parameter "newVersion"
    .parameter "oldVersion"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    invoke-static {p2}, Lcom/baidu/launcher/thememanager/util/Utils;->IsNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 183
    .local v0, OldNull:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/Utils;->IsNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 185
    .local v1, newNull:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 192
    :goto_0
    return-object v2

    .line 187
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 188
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 190
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 192
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static varargs addWallpaperToDatabase(Landroid/content/Context;II[Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "ctx"
    .parameter "type"
    .parameter "size"
    .parameter "params"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 1767
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1768
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1769
    .local v2, values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 1771
    .local v1, uri:Landroid/net/Uri;
    aget-object v3, p3, v5

    if-eqz v3, :cond_3

    aget-object v3, p3, v5

    invoke-static {p0, v3}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isWallpaperPathExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1773
    aget-object v3, p3, v4

    if-eqz v3, :cond_0

    .line 1774
    const-string v3, "category_name"

    aget-object v4, p3, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    :cond_0
    aget-object v3, p3, v6

    if-eqz v3, :cond_1

    .line 1777
    const-string v3, "item_original"

    aget-object v4, p3, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    :cond_1
    aget-object v3, p3, v7

    if-eqz v3, :cond_2

    .line 1780
    const-string v3, "item_thumbnail"

    aget-object v4, p3, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    :cond_2
    const-string v3, "item_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1783
    const-string v3, "item_size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1784
    const-string v3, "item_path"

    aget-object v4, p3, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    sget-object v3, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->WALLPAPER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1790
    :cond_3
    return-object v1
.end method

.method public static analyThemeFromAssets(Landroid/content/Context;Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 34
    .parameter "aContext"
    .parameter "aRes"
    .parameter "packageName"
    .parameter "scanType"

    .prologue
    .line 1179
    const/4 v11, 0x0

    .line 1180
    .local v11, des:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1182
    .local v6, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v23, -0x1

    .line 1184
    .local v23, result:I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v31

    const-string v32, "theme/description.xml"

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getDescription(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1190
    :goto_0
    const-string v31, "title"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1191
    .local v27, title:Ljava/lang/String;
    const-string v31, "uiVersion"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1193
    .local v28, uiversion:Ljava/lang/String;
    const-string v31, "version"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1195
    .local v30, version:Ljava/lang/String;
    const-string v31, "author"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1196
    .local v5, author:Ljava/lang/String;
    const-string v31, "designer"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1199
    .local v12, designer:Ljava/lang/String;
    const-class v32, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    monitor-enter v32

    .line 1202
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->checkThemeExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 1204
    monitor-exit v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1206
    if-eqz v27, :cond_4

    const/16 v31, -0x1

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_4

    .line 1211
    const/16 v22, 0x0

    .line 1212
    .local v22, previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1214
    .local v7, componentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v31

    const-string v32, "preview_list.xml"

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v18

    .line 1215
    .local v18, file:Ljava/io/InputStream;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getPreviewList(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v22

    .line 1216
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v31

    const-string v32, "component_list.xml"

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getComponentList(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1219
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getThumbnailFromAssets(Ljava/io/InputStream;Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v26

    .line 1224
    .local v26, thumbMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, ""

    .line 1225
    .local v10, defaultPath:Ljava/lang/String;
    const-string v31, "defaultThumb"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    if-nez v31, :cond_5

    const-string v10, ""

    .line 1228
    :goto_1
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 1229
    .local v29, values:Landroid/content/ContentValues;
    const-string v31, "title"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v31, "path"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v31, "uiVersion"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const-string v31, "version"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v31, "author"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-string v31, "key"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v27 .. v27}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-static/range {v30 .. v30}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v31, "designer"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v31, "themesize"

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-string v31, "datemodify"

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    const-string v31, "themeid"

    const/16 v32, -0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1241
    const-string v31, "thumbnail"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/theme/preview/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 1244
    const-string v31, "defaultThumb"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/baidu/launcher/thememanager/util/Utils;->checkThemeType(Ljava/lang/String;)I

    move-result v24

    .line 1247
    .local v24, theme_level:I
    const-string v31, "theme_level"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1249
    const-string v31, "theme_type"

    const/16 v32, 0x65

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1250
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    sget-object v32, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v25

    .line 1254
    .local v25, themeurl:Landroid/net/Uri;
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v23

    .line 1255
    if-gez v23, :cond_1

    .line 1262
    :cond_1
    :goto_2
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1263
    .local v15, detailValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    .line 1264
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1266
    .local v17, entry:Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1267
    .local v13, detailValues:Landroid/content/ContentValues;
    const-string v31, "theme_id"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1268
    const-string v31, "key"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v31, "title"

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const-string v31, "path"

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-string v31, "theme_level"

    const/16 v32, 0x3e8

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1273
    const-string v31, "theme_type"

    const/16 v32, 0x65

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1275
    const-string v31, "component"

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    const-string v31, "component"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1280
    .local v21, key:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 1281
    const-string v32, "preview"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    :cond_2
    const-string v31, "component"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_3

    .line 1289
    const-string v31, "component"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v15, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 1187
    .end local v5           #author:Ljava/lang/String;
    .end local v7           #componentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #defaultPath:Ljava/lang/String;
    .end local v12           #designer:Ljava/lang/String;
    .end local v13           #detailValues:Landroid/content/ContentValues;
    .end local v15           #detailValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v17           #entry:Ljava/lang/String;
    .end local v18           #file:Ljava/io/InputStream;
    .end local v19           #i:I
    .end local v21           #key:Ljava/lang/String;
    .end local v22           #previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24           #theme_level:I
    .end local v25           #themeurl:Landroid/net/Uri;
    .end local v26           #thumbMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #title:Ljava/lang/String;
    .end local v28           #uiversion:Ljava/lang/String;
    .end local v29           #values:Landroid/content/ContentValues;
    .end local v30           #version:Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1188
    .local v16, e:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1204
    .end local v16           #e:Ljava/io/IOException;
    .restart local v5       #author:Ljava/lang/String;
    .restart local v12       #designer:Ljava/lang/String;
    .restart local v27       #title:Ljava/lang/String;
    .restart local v28       #uiversion:Ljava/lang/String;
    .restart local v30       #version:Ljava/lang/String;
    :catchall_0
    move-exception v31

    :try_start_4
    monitor-exit v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v31

    .line 1220
    .restart local v7       #componentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22       #previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v16

    .line 1221
    .restart local v16       #e:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    .line 1314
    .end local v7           #componentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #e:Ljava/io/IOException;
    .end local v22           #previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :goto_4
    return-void

    .line 1225
    .restart local v7       #componentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #defaultPath:Ljava/lang/String;
    .restart local v18       #file:Ljava/io/InputStream;
    .restart local v22       #previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26       #thumbMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v31, "defaultThumb"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    move-object/from16 v10, v31

    goto/16 :goto_1

    .line 1258
    .restart local v24       #theme_level:I
    .restart local v25       #themeurl:Landroid/net/Uri;
    .restart local v29       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v16

    .line 1259
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1297
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v15       #detailValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v19       #i:I
    :cond_6
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1298
    .local v8, componentSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 1299
    const/4 v14, 0x0

    .line 1300
    .local v14, detailValuesArrary:[Landroid/content/ContentValues;
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_8

    .line 1301
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v14, v0, [Landroid/content/ContentValues;

    .line 1302
    const/16 v19, 0x0

    .line 1303
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1304
    .local v9, componnet:Ljava/lang/String;
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/ContentValues;

    aput-object v31, v14, v19

    .line 1305
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 1307
    .end local v9           #componnet:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    sget-object v32, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1311
    .end local v20           #i$:Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v27

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->sendStatusNotifition(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_4
.end method

.method public static analyThemeFromZip(Landroid/content/Context;Ljava/util/List;I)V
    .locals 41
    .parameter "aContext"
    .parameter
    .parameter "scanType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 986
    .local p1, beans:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;>;"
    const/16 v36, 0x0

    .line 987
    .local v36, zip:Ljava/util/zip/ZipFile;
    const/4 v13, 0x0

    .line 988
    .local v13, des:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 990
    .local v7, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v28, -0x1

    .line 991
    .local v28, result:I
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v38

    if-lez v38, :cond_1

    .line 993
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    move-object/from16 v37, v36

    .end local v22           #i$:Ljava/util/Iterator;
    .end local v36           #zip:Ljava/util/zip/ZipFile;
    .local v37, zip:Ljava/util/zip/ZipFile;
    :goto_0
    :try_start_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;

    .line 994
    .local v6, bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->getPath()Ljava/lang/String;

    move-result-object v26

    .line 995
    .local v26, localPath:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->getDateModified()J

    move-result-wide v10

    .line 997
    .local v10, data:J
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/thememanager/util/Utils;->isZipFormat(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_2

    .line 998
    const-string v38, "ThemeUtils"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "isNotZip, path: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v20, f:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    goto :goto_0

    .line 1147
    .end local v6           #bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    .end local v10           #data:J
    .end local v20           #f:Ljava/io/File;
    .end local v26           #localPath:Ljava/lang/String;
    :catch_0
    move-exception v18

    move-object/from16 v36, v37

    .line 1148
    .end local v37           #zip:Ljava/util/zip/ZipFile;
    .local v18, e:Ljava/io/IOException;
    .restart local v36       #zip:Ljava/util/zip/ZipFile;
    :goto_1
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1157
    if-eqz v7, :cond_0

    .line 1158
    :try_start_3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1159
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1161
    :cond_0
    if-eqz v36, :cond_1

    .line 1162
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 1169
    .end local v18           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 1004
    .end local v36           #zip:Ljava/util/zip/ZipFile;
    .restart local v6       #bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    .restart local v10       #data:J
    .restart local v26       #localPath:Ljava/lang/String;
    .restart local v37       #zip:Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_4
    new-instance v36, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    .line 1005
    .end local v37           #zip:Ljava/util/zip/ZipFile;
    .restart local v36       #zip:Ljava/util/zip/ZipFile;
    :try_start_5
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getDescriptionFromZip(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v13

    .line 1007
    const-string v38, "title"

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1008
    .local v32, title:Ljava/lang/String;
    const-string v38, "uiVersion"

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1010
    .local v33, uiversion:Ljava/lang/String;
    const-string v38, "version"

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1012
    .local v35, version:Ljava/lang/String;
    const-string v38, "author"

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1013
    .local v5, author:Ljava/lang/String;
    const-string v38, "designer"

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1016
    .local v14, designer:Ljava/lang/String;
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 1018
    :try_start_6
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10, v11}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->checkThemeUpdate(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1019
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->checkThemeExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    .line 1021
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1023
    if-eqz v32, :cond_12

    const/16 v38, -0x1

    move/from16 v0, v28

    move/from16 v1, v38

    if-ne v0, v1, :cond_12

    .line 1024
    :try_start_7
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 1025
    .local v34, values:Landroid/content/ContentValues;
    const-string v38, "title"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const-string v38, "path"

    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->getPath()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v38, "uiVersion"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v38, "version"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v38, "author"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const-string v38, "key"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v32 .. v32}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static/range {v35 .. v35}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v38, "designer"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v38, "themesize"

    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->getSize()I

    move-result v39

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    const-string v38, "datemodify"

    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->getDateModified()J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1035
    const-string v38, "themeid"

    const/16 v39, -0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1037
    const-string v38, "key"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->getPath()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->unzipTheme(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_3

    .line 1039
    const-string v38, "ThemeUtils"

    const-string v39, "unzipTheme fail"

    invoke-static/range {v38 .. v39}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    move-object/from16 v37, v36

    .line 1040
    .end local v36           #zip:Ljava/util/zip/ZipFile;
    .restart local v37       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_0

    .line 1021
    .end local v34           #values:Landroid/content/ContentValues;
    .end local v37           #zip:Ljava/util/zip/ZipFile;
    .restart local v36       #zip:Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v38

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v38

    .line 1147
    .end local v5           #author:Ljava/lang/String;
    .end local v6           #bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    .end local v10           #data:J
    .end local v14           #designer:Ljava/lang/String;
    .end local v26           #localPath:Ljava/lang/String;
    .end local v32           #title:Ljava/lang/String;
    .end local v33           #uiversion:Ljava/lang/String;
    .end local v35           #version:Ljava/lang/String;
    :catch_1
    move-exception v18

    goto/16 :goto_1

    .line 1043
    .restart local v5       #author:Ljava/lang/String;
    .restart local v6       #bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    .restart local v10       #data:J
    .restart local v14       #designer:Ljava/lang/String;
    .restart local v26       #localPath:Ljava/lang/String;
    .restart local v32       #title:Ljava/lang/String;
    .restart local v33       #uiversion:Ljava/lang/String;
    .restart local v34       #values:Landroid/content/ContentValues;
    .restart local v35       #version:Ljava/lang/String;
    :cond_3
    const-string v38, "key"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    sget-object v39, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->scanScape:[Ljava/lang/String;

    const/16 v40, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getThumbnailFromZip(Ljava/util/zip/ZipFile;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v31

    .line 1045
    .local v31, thumbMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, ""

    .line 1046
    .local v12, defaultPath:Ljava/lang/String;
    const-string v38, "defaultThumb"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    if-nez v38, :cond_5

    const-string v12, ""

    .line 1048
    :goto_3
    const-string v39, "thumbnail"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "key"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-object v40, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v38, ""

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_4

    .line 1053
    const-string v38, "defaultThumb"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    :cond_4
    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->getPath()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/baidu/launcher/thememanager/util/Utils;->checkThemeType(Ljava/lang/String;)I

    move-result v29

    .line 1056
    .local v29, theme_level:I
    const-string v38, "theme_level"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1058
    const-string v38, "theme_type"

    const/16 v39, 0x2

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1060
    invoke-static/range {v36 .. v36}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getEntryList(Ljava/util/zip/ZipFile;)Ljava/util/ArrayList;

    move-result-object v25

    .line 1061
    .local v25, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v25, :cond_12

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v38

    if-lez v38, :cond_12

    .line 1064
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    sget-object v39, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v30

    .line 1068
    .local v30, themeurl:Landroid/net/Uri;
    :try_start_a
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 1069
    if-gez v28, :cond_6

    .line 1070
    const-string v38, "ThemeUtils"

    const-string v39, "insert fail"

    invoke-static/range {v38 .. v39}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_5

    move-object/from16 v37, v36

    .line 1071
    .end local v36           #zip:Ljava/util/zip/ZipFile;
    .restart local v37       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_0

    .line 1046
    .end local v25           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29           #theme_level:I
    .end local v30           #themeurl:Landroid/net/Uri;
    .end local v37           #zip:Ljava/util/zip/ZipFile;
    .restart local v36       #zip:Ljava/util/zip/ZipFile;
    :cond_5
    :try_start_b
    const-string v38, "defaultThumb"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    move-object/from16 v12, v38

    goto/16 :goto_3

    .line 1073
    .restart local v25       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v29       #theme_level:I
    .restart local v30       #themeurl:Landroid/net/Uri;
    :catch_2
    move-exception v18

    .line 1074
    .local v18, e:Ljava/lang/Exception;
    const-string v38, "ThemeUtils"

    const-string v39, "parseInt fail"

    invoke-static/range {v38 .. v39}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v37, v36

    .line 1075
    .end local v36           #zip:Ljava/util/zip/ZipFile;
    .restart local v37       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_0

    .line 1078
    .end local v18           #e:Ljava/lang/Exception;
    .end local v37           #zip:Ljava/util/zip/ZipFile;
    .restart local v36       #zip:Ljava/util/zip/ZipFile;
    :cond_6
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 1079
    .local v17, detailValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    const/16 v21, 0x0

    .local v21, i:I
    :goto_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v21

    move/from16 v1, v38

    if-ge v0, v1, :cond_10

    .line 1080
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1082
    .local v19, entry:Ljava/lang/String;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "preview"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-object v39, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "wallpaper"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-object v39, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_9

    .line 1084
    :cond_7
    invoke-static/range {v19 .. v19}, Lcom/baidu/launcher/thememanager/util/Utils;->isPic(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_9

    .line 1079
    .end local v19           #entry:Ljava/lang/String;
    :cond_8
    :goto_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1088
    .restart local v19       #entry:Ljava/lang/String;
    :cond_9
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1089
    .local v15, detailValues:Landroid/content/ContentValues;
    const-string v38, "theme_id"

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1090
    const-string v38, "key"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v38, "title"

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v38, "path"

    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->getPath()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v38, "theme_level"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1094
    const-string v38, "theme_type"

    const/16 v39, 0x2

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1096
    const-string v38, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    .line 1097
    .local v27, pos:I
    const-string v38, "lock_wallpaper"

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_d

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "wallpaper"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-object v39, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_d

    .line 1099
    const-string v39, "component"

    const/16 v38, -0x1

    move/from16 v0, v27

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "lock"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    :goto_6
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    .end local v19           #entry:Ljava/lang/String;
    :goto_7
    const-string v38, "component"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1111
    .local v24, key:Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 1112
    const-string v39, "preview"

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    :cond_a
    const-string v38, "component"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_8

    .line 1120
    const-string v38, "component"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto/16 :goto_5

    .line 1149
    .end local v5           #author:Ljava/lang/String;
    .end local v6           #bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    .end local v10           #data:J
    .end local v12           #defaultPath:Ljava/lang/String;
    .end local v14           #designer:Ljava/lang/String;
    .end local v15           #detailValues:Landroid/content/ContentValues;
    .end local v17           #detailValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v21           #i:I
    .end local v24           #key:Ljava/lang/String;
    .end local v25           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26           #localPath:Ljava/lang/String;
    .end local v27           #pos:I
    .end local v29           #theme_level:I
    .end local v30           #themeurl:Landroid/net/Uri;
    .end local v31           #thumbMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v32           #title:Ljava/lang/String;
    .end local v33           #uiversion:Ljava/lang/String;
    .end local v34           #values:Landroid/content/ContentValues;
    .end local v35           #version:Ljava/lang/String;
    :catch_3
    move-exception v18

    .line 1150
    .local v18, e:Ljava/lang/IllegalStateException;
    :goto_8
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1157
    if-eqz v7, :cond_b

    .line 1158
    :try_start_d
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1159
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1161
    :cond_b
    if-eqz v36, :cond_1

    .line 1162
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_2

    .line 1164
    :catch_4
    move-exception v18

    .line 1165
    .local v18, e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1099
    .end local v18           #e:Ljava/io/IOException;
    .restart local v5       #author:Ljava/lang/String;
    .restart local v6       #bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    .restart local v10       #data:J
    .restart local v12       #defaultPath:Ljava/lang/String;
    .restart local v14       #designer:Ljava/lang/String;
    .restart local v15       #detailValues:Landroid/content/ContentValues;
    .restart local v17       #detailValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v19       #entry:Ljava/lang/String;
    .restart local v21       #i:I
    .restart local v25       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26       #localPath:Ljava/lang/String;
    .restart local v27       #pos:I
    .restart local v29       #theme_level:I
    .restart local v30       #themeurl:Landroid/net/Uri;
    .restart local v31       #thumbMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v32       #title:Ljava/lang/String;
    .restart local v33       #uiversion:Ljava/lang/String;
    .restart local v34       #values:Landroid/content/ContentValues;
    .restart local v35       #version:Ljava/lang/String;
    :cond_c
    :try_start_e
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "lock"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v40, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v40

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_6

    .line 1104
    :cond_d
    const-string v38, "component"

    const/16 v39, -0x1

    move/from16 v0, v27

    move/from16 v1, v39

    if-ne v0, v1, :cond_f

    .end local v19           #entry:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    goto/16 :goto_7

    .line 1151
    .end local v5           #author:Ljava/lang/String;
    .end local v6           #bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    .end local v10           #data:J
    .end local v12           #defaultPath:Ljava/lang/String;
    .end local v14           #designer:Ljava/lang/String;
    .end local v15           #detailValues:Landroid/content/ContentValues;
    .end local v17           #detailValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v21           #i:I
    .end local v25           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26           #localPath:Ljava/lang/String;
    .end local v27           #pos:I
    .end local v29           #theme_level:I
    .end local v30           #themeurl:Landroid/net/Uri;
    .end local v31           #thumbMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v32           #title:Ljava/lang/String;
    .end local v33           #uiversion:Ljava/lang/String;
    .end local v34           #values:Landroid/content/ContentValues;
    .end local v35           #version:Ljava/lang/String;
    :catch_5
    move-exception v18

    .line 1152
    .local v18, e:Ljava/lang/NullPointerException;
    :goto_a
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1157
    if-eqz v7, :cond_e

    .line 1158
    :try_start_10
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1159
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1161
    :cond_e
    if-eqz v36, :cond_1

    .line 1162
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_2

    .line 1164
    :catch_6
    move-exception v18

    .line 1165
    .local v18, e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1104
    .end local v18           #e:Ljava/io/IOException;
    .restart local v5       #author:Ljava/lang/String;
    .restart local v6       #bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    .restart local v10       #data:J
    .restart local v12       #defaultPath:Ljava/lang/String;
    .restart local v14       #designer:Ljava/lang/String;
    .restart local v15       #detailValues:Landroid/content/ContentValues;
    .restart local v17       #detailValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .restart local v19       #entry:Ljava/lang/String;
    .restart local v21       #i:I
    .restart local v25       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26       #localPath:Ljava/lang/String;
    .restart local v27       #pos:I
    .restart local v29       #theme_level:I
    .restart local v30       #themeurl:Landroid/net/Uri;
    .restart local v31       #thumbMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v32       #title:Ljava/lang/String;
    .restart local v33       #uiversion:Ljava/lang/String;
    .restart local v34       #values:Landroid/content/ContentValues;
    .restart local v35       #version:Ljava/lang/String;
    :cond_f
    const/16 v39, 0x0

    :try_start_11
    move-object/from16 v0, v19

    move/from16 v1, v39

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    goto :goto_9

    .line 1128
    .end local v15           #detailValues:Landroid/content/ContentValues;
    .end local v19           #entry:Ljava/lang/String;
    .end local v27           #pos:I
    :cond_10
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1129
    .local v8, componentSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 1130
    const/16 v16, 0x0

    .line 1131
    .local v16, detailValuesArrary:[Landroid/content/ContentValues;
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_12

    .line 1132
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v38

    move/from16 v0, v38

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v16, v0

    .line 1133
    const/16 v21, 0x0

    .line 1134
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1135
    .local v9, componnet:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/ContentValues;

    aput-object v38, v16, v21

    .line 1136
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 1138
    .end local v9           #componnet:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    sget-object v39, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1144
    .end local v8           #componentSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12           #defaultPath:Ljava/lang/String;
    .end local v16           #detailValuesArrary:[Landroid/content/ContentValues;
    .end local v17           #detailValuesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v21           #i:I
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29           #theme_level:I
    .end local v30           #themeurl:Landroid/net/Uri;
    .end local v31           #thumbMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_12
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadThemeManager;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->startNextTask(Landroid/content/Context;)V

    .line 1145
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v32

    move-object/from16 v3, v26

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->sendStatusNotifition(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    move-object/from16 v37, v36

    .line 1146
    .end local v36           #zip:Ljava/util/zip/ZipFile;
    .restart local v37       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_0

    .line 1157
    .end local v5           #author:Ljava/lang/String;
    .end local v6           #bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    .end local v10           #data:J
    .end local v14           #designer:Ljava/lang/String;
    .end local v26           #localPath:Ljava/lang/String;
    .end local v32           #title:Ljava/lang/String;
    .end local v33           #uiversion:Ljava/lang/String;
    .end local v35           #version:Ljava/lang/String;
    :cond_13
    if-eqz v7, :cond_14

    .line 1158
    :try_start_12
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1159
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1161
    :cond_14
    if-eqz v37, :cond_15

    .line 1162
    invoke-virtual/range {v37 .. v37}, Ljava/util/zip/ZipFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    :cond_15
    move-object/from16 v36, v37

    .line 1166
    .end local v37           #zip:Ljava/util/zip/ZipFile;
    .restart local v36       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_2

    .line 1164
    .end local v36           #zip:Ljava/util/zip/ZipFile;
    .restart local v37       #zip:Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v18

    .line 1165
    .restart local v18       #e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    move-object/from16 v36, v37

    .line 1167
    .end local v37           #zip:Ljava/util/zip/ZipFile;
    .restart local v36       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_2

    .line 1164
    :catch_8
    move-exception v18

    .line 1165
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1153
    .end local v18           #e:Ljava/io/IOException;
    :catch_9
    move-exception v18

    .line 1154
    .local v18, e:Ljava/lang/Exception;
    :goto_c
    :try_start_13
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1157
    if-eqz v7, :cond_16

    .line 1158
    :try_start_14
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1159
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1161
    :cond_16
    if-eqz v36, :cond_1

    .line 1162
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_2

    .line 1164
    :catch_a
    move-exception v18

    .line 1165
    .local v18, e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1156
    .end local v18           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v38

    .line 1157
    :goto_d
    if-eqz v7, :cond_17

    .line 1158
    :try_start_15
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1159
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1161
    :cond_17
    if-eqz v36, :cond_18

    .line 1162
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipFile;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 1166
    :cond_18
    :goto_e
    throw v38

    .line 1164
    :catch_b
    move-exception v18

    .line 1165
    .restart local v18       #e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 1156
    .end local v18           #e:Ljava/io/IOException;
    .end local v36           #zip:Ljava/util/zip/ZipFile;
    .restart local v37       #zip:Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v38

    move-object/from16 v36, v37

    .end local v37           #zip:Ljava/util/zip/ZipFile;
    .restart local v36       #zip:Ljava/util/zip/ZipFile;
    goto :goto_d

    .line 1153
    .end local v36           #zip:Ljava/util/zip/ZipFile;
    .restart local v37       #zip:Ljava/util/zip/ZipFile;
    :catch_c
    move-exception v18

    move-object/from16 v36, v37

    .end local v37           #zip:Ljava/util/zip/ZipFile;
    .restart local v36       #zip:Ljava/util/zip/ZipFile;
    goto :goto_c

    .line 1151
    .end local v36           #zip:Ljava/util/zip/ZipFile;
    .restart local v37       #zip:Ljava/util/zip/ZipFile;
    :catch_d
    move-exception v18

    move-object/from16 v36, v37

    .end local v37           #zip:Ljava/util/zip/ZipFile;
    .restart local v36       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_a

    .line 1149
    .end local v36           #zip:Ljava/util/zip/ZipFile;
    .restart local v37       #zip:Ljava/util/zip/ZipFile;
    :catch_e
    move-exception v18

    move-object/from16 v36, v37

    .end local v37           #zip:Ljava/util/zip/ZipFile;
    .restart local v36       #zip:Ljava/util/zip/ZipFile;
    goto/16 :goto_8
.end method

.method public static analyWallpaper(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 11
    .parameter "aContext"
    .parameter "path"
    .parameter "scanType"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1803
    if-ne p2, v9, :cond_0

    .line 1809
    :cond_0
    const-class v7, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    monitor-enter v7

    .line 1810
    :try_start_0
    invoke-static {p0, p1}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isWallpaperPathExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 1811
    .local v3, result:Z
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1812
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1813
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getFileSize(Ljava/io/File;)I

    move-result v4

    .line 1814
    .local v4, size:I
    const/4 v0, 0x5

    .line 1815
    .local v0, aType:I
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isImageFile(Ljava/lang/String;)Z

    move-result v2

    .line 1816
    .local v2, isImage:Z
    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0xa

    if-le v4, v6, :cond_3

    if-eqz v2, :cond_3

    .line 1818
    const-string v6, "wallpaper_preview.jpg"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1819
    const/4 v0, 0x4

    .line 1820
    const/16 v4, 0x190

    .line 1822
    :cond_1
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    aput-object v10, v6, v8

    const/4 v7, 0x1

    aput-object v10, v6, v7

    aput-object v10, v6, v9

    const/4 v7, 0x3

    aput-object p1, v6, v7

    invoke-static {p0, v0, v4, v6}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->addWallpaperToDatabase(Landroid/content/Context;II[Ljava/lang/String;)Landroid/net/Uri;

    .line 1823
    if-ne p2, v9, :cond_2

    .line 1825
    const v6, 0x7f0c00ce

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 1826
    .local v5, toast:Landroid/widget/Toast;
    const/16 v6, 0x11

    invoke-virtual {v5, v6, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 1827
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1829
    .end local v5           #toast:Landroid/widget/Toast;
    :cond_2
    invoke-static {p0, p1}, Lcom/baidu/launcher/thememanager/util/Utils;->notifyFileScanner(Landroid/content/Context;Ljava/lang/String;)V

    .line 1831
    :cond_3
    return-void

    .line 1811
    .end local v0           #aType:I
    .end local v1           #file:Ljava/io/File;
    .end local v2           #isImage:Z
    .end local v3           #result:Z
    .end local v4           #size:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public static checkThemeExist(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .parameter "context"
    .parameter "path"

    .prologue
    .line 199
    const/4 v8, -0x1

    .line 200
    .local v8, result:I
    new-instance v9, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 203
    .local v9, whereString:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 205
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 209
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 215
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 220
    :cond_0
    if-eqz v6, :cond_1

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 224
    .end local v2           #projection:[Ljava/lang/String;
    :cond_1
    :goto_0
    return v8

    .line 217
    :catch_0
    move-exception v7

    .line 218
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    if-eqz v6, :cond_1

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 220
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 221
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static checkThemeExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "context"
    .parameter "title"
    .parameter "version"

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 229
    const/4 v8, -0x1

    .line 230
    .local v8, result:I
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-static {p2}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 233
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v0, "key=?"

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 235
    .local v9, whereString:Ljava/lang/StringBuffer;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    .line 239
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 256
    :cond_0
    if-eqz v6, :cond_1

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 261
    :cond_1
    :goto_0
    return v8

    .line 253
    :catch_0
    move-exception v7

    .line 254
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    if-eqz v6, :cond_1

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 256
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static checkThemeUpdate(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 13
    .parameter "context"
    .parameter "path"
    .parameter "date"

    .prologue
    .line 495
    new-instance v12, Ljava/lang/StringBuffer;

    const-string v0, "path=?"

    invoke-direct {v12, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 497
    .local v12, whereString:Ljava/lang/StringBuffer;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "key"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "datemodify"

    aput-object v1, v2, v0

    .line 503
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 507
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 512
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 515
    .local v9, mid:I
    const-string v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 516
    .local v8, key:Ljava/lang/String;
    const-string v0, "datemodify"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 517
    .local v10, old:J
    cmp-long v0, p2, v10

    if-eqz v0, :cond_0

    .line 518
    invoke-static {p0, v9, v8}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->deleleOldTheme(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #mid:I
    .end local v10           #old:J
    :cond_0
    if-eqz v6, :cond_1

    .line 525
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 529
    :cond_1
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v7

    .line 522
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    if-eqz v6, :cond_1

    .line 525
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 524
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 525
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static defaultThemeExsits(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "name"
    .parameter "ctx"

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, reValue:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, path:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-static {p1, v1}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isVersionNeedUpdate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    const/4 v2, 0x1

    .line 105
    .end local v0           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return v2

    .line 100
    .restart local v0       #file:Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static deleleOldTheme(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "mId"
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 539
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 540
    .local v1, themeString:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 542
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "theme_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, themeContentString:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 547
    if-eqz p2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    new-instance v2, Ljava/io/File;

    invoke-static {p2, v5}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getSrcThemePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 551
    :cond_0
    return-void
.end method

.method public static fatchDefaultData(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    .local v1, beans:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;>;"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1631
    .local v3, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 1633
    .local v4, fis:Ljava/io/FileInputStream;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1634
    new-instance v0, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;-><init>()V

    .line 1635
    .local v0, bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1636
    .end local v4           #fis:Ljava/io/FileInputStream;
    .local v5, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->setDateModified(J)V

    .line 1637
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->setPath(Ljava/lang/String;)V

    .line 1638
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->setSize(I)V

    .line 1639
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v4, v5

    .line 1647
    .end local v0           #bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_0
    if-eqz v4, :cond_1

    .line 1648
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1654
    :cond_1
    :goto_0
    return-object v1

    .line 1650
    :catch_0
    move-exception v2

    .line 1651
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1641
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1642
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1647
    if-eqz v4, :cond_1

    .line 1648
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1650
    :catch_2
    move-exception v2

    .line 1651
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1643
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 1644
    .restart local v2       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1647
    if-eqz v4, :cond_1

    .line 1648
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 1650
    :catch_4
    move-exception v2

    .line 1651
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1646
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1647
    :goto_3
    if-eqz v4, :cond_2

    .line 1648
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1652
    :cond_2
    :goto_4
    throw v6

    .line 1650
    :catch_5
    move-exception v2

    .line 1651
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1646
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v0       #bean:Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 1643
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1641
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getComponentList(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter "inputStream"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1387
    .local v0, componentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 1391
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 1392
    .local v3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1394
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1395
    .local v4, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1397
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 1398
    .local v2, eventType:I
    :goto_0
    if-eq v2, v7, :cond_3

    .line 1400
    if-nez v2, :cond_1

    .line 1412
    :cond_0
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 1402
    :cond_1
    if-eq v2, v7, :cond_0

    .line 1404
    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    .line 1406
    const/4 v5, 0x3

    if-eq v2, v5, :cond_0

    .line 1407
    const/4 v5, 0x4

    if-ne v2, v5, :cond_0

    .line 1408
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, ""

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1409
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 1415
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 1416
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1421
    if-eqz p0, :cond_2

    .line 1422
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1428
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_2
    return-object v0

    .line 1421
    .restart local v2       #eventType:I
    .restart local v3       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    if-eqz p0, :cond_2

    .line 1422
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1423
    :catch_1
    move-exception v1

    .line 1424
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1423
    .end local v2           #eventType:I
    .end local v3           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 1424
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1417
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 1418
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1421
    if-eqz p0, :cond_2

    .line 1422
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 1423
    :catch_4
    move-exception v1

    .line 1424
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1420
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1421
    if-eqz p0, :cond_4

    .line 1422
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1425
    :cond_4
    :goto_3
    throw v5

    .line 1423
    :catch_5
    move-exception v1

    .line 1424
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getDateModifyFromDB(Landroid/content/Context;Ljava/lang/String;)J
    .locals 11
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 562
    const-wide/16 v8, -0x1

    .line 563
    .local v8, sqliteDate:J
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v0, "path=?"

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 565
    .local v10, whereString:Ljava/lang/StringBuffer;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "datemodify"

    aput-object v0, v2, v1

    .line 569
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 573
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 578
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "datemodify"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 586
    :cond_0
    if-eqz v6, :cond_1

    .line 587
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 591
    :cond_1
    :goto_0
    return-wide v8

    .line 583
    :catch_0
    move-exception v7

    .line 584
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    if-eqz v6, :cond_1

    .line 587
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 586
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 587
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getDescription(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "inputStream"
    .parameter "ctx"
    .parameter "localpath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 638
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 640
    .local v5, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_4

    .line 644
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 645
    .local v4, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 647
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 648
    .local v7, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v7, p0, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 650
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 651
    .local v3, eventType:I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 652
    .local v6, text:Ljava/lang/String;
    :goto_0
    if-eq v3, v9, :cond_3

    .line 654
    if-nez v3, :cond_1

    .line 666
    :cond_0
    :goto_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 656
    :cond_1
    if-eq v3, v9, :cond_0

    .line 658
    const/4 v8, 0x2

    if-eq v3, v8, :cond_0

    .line 660
    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    .line 661
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const/4 v6, 0x0

    goto :goto_1

    .line 663
    :cond_2
    const/4 v8, 0x4

    if-ne v3, v8, :cond_0

    .line 664
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    goto :goto_1

    .line 683
    :cond_3
    if-eqz p0, :cond_4

    .line 684
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 691
    .end local v3           #eventType:I
    .end local v4           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :goto_2
    return-object v5

    .line 685
    .restart local v3       #eventType:I
    .restart local v4       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #text:Ljava/lang/String;
    .restart local v7       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 686
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 669
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #eventType:I
    .end local v4           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v2

    .line 671
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p2, :cond_5

    :try_start_2
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 673
    const-string v8, "theme/ICON"

    invoke-static {p1, p2, v8}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadIdByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 674
    .local v0, downloadId:J
    invoke-static {p1, v0, v1}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownload(Landroid/content/Context;J)V

    .line 675
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 677
    .end local v0           #downloadId:J
    :cond_5
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    if-eqz p0, :cond_4

    .line 684
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 685
    :catch_2
    move-exception v2

    .line 686
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 679
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 680
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 683
    if-eqz p0, :cond_4

    .line 684
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 685
    :catch_4
    move-exception v2

    .line 686
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 682
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 683
    if-eqz p0, :cond_6

    .line 684
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 687
    :cond_6
    :goto_3
    throw v8

    .line 685
    :catch_5
    move-exception v2

    .line 686
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getDescriptionFromZip(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .parameter "paramZipFile"
    .parameter "ctx"
    .parameter "localpath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    const-string v3, "description.xml"

    .line 605
    .local v3, paramString:Ljava/lang/String;
    const/4 v4, 0x0

    .line 607
    .local v4, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 608
    .local v0, inputStream:Ljava/io/InputStream;
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 610
    .local v2, localZipEntry:Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_0

    .line 614
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 620
    if-eqz v0, :cond_0

    .line 621
    invoke-static {v0, p1, p2}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getDescription(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    :cond_0
    move-object v5, v4

    .line 625
    :goto_0
    return-object v5

    .line 615
    :catch_0
    move-exception v1

    .line 617
    .local v1, localIOException:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 618
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getEntryList(Ljava/util/zip/ZipFile;)Ljava/util/ArrayList;
    .locals 12
    .parameter "paramZipFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 701
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 702
    .local v3, localEnumeration:Ljava/util/Enumeration;
    const/4 v0, 0x0

    .line 703
    .local v0, dir:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v6, mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 705
    .local v2, hashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 709
    :try_start_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 711
    .local v5, localZipEntry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 713
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 714
    const/4 v9, 0x0

    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 719
    .local v7, str1:Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 721
    sget-object v9, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->mPresetFolder:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-eq v9, v11, :cond_3

    .line 723
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 742
    .end local v5           #localZipEntry:Ljava/util/zip/ZipEntry;
    .end local v7           #str1:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 744
    .local v4, localException:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 749
    .end local v4           #localException:Ljava/lang/Exception;
    .end local v6           #mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v6

    .line 727
    .restart local v5       #localZipEntry:Ljava/util/zip/ZipEntry;
    .restart local v6       #mList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #str1:Ljava/lang/String;
    :cond_3
    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 728
    .local v1, first:I
    if-ne v1, v11, :cond_4

    move-object v8, v0

    .line 729
    .local v8, subdir:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 731
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 728
    .end local v8           #subdir:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 739
    .end local v1           #first:I
    :cond_5
    const/4 v0, 0x0

    .line 740
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getPreviewList(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .parameter "inputStream"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1432
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1433
    .local v3, previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 1437
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 1438
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1440
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1441
    .local v4, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v4, p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1443
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1444
    .local v1, eventType:I
    :goto_0
    if-eq v1, v7, :cond_3

    .line 1446
    if-nez v1, :cond_1

    .line 1458
    :cond_0
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 1448
    :cond_1
    if-eq v1, v7, :cond_0

    .line 1450
    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    .line 1452
    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    .line 1453
    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    .line 1454
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, ""

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1455
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 1461
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 1462
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1467
    if-eqz p0, :cond_2

    .line 1468
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1474
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_2
    return-object v3

    .line 1467
    .restart local v1       #eventType:I
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v4       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    if-eqz p0, :cond_2

    .line 1468
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1469
    :catch_1
    move-exception v0

    .line 1470
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1469
    .end local v1           #eventType:I
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v4           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 1470
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1463
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1464
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1467
    if-eqz p0, :cond_2

    .line 1468
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 1469
    :catch_4
    move-exception v0

    .line 1470
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1466
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1467
    if-eqz p0, :cond_4

    .line 1468
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1471
    :cond_4
    :goto_3
    throw v5

    .line 1469
    :catch_5
    move-exception v0

    .line 1470
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getThemeID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "context"
    .parameter "title"
    .parameter "version"

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 339
    const/4 v8, -0x1

    .line 341
    .local v8, id:I
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 342
    invoke-static {p2}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 343
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v0, "key=?"

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 345
    .local v9, whereString:Ljava/lang/StringBuffer;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    .line 348
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 355
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 361
    :cond_0
    if-eqz v6, :cond_1

    .line 362
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_1
    :goto_0
    return v8

    .line 358
    :catch_0
    move-exception v7

    .line 359
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    if-eqz v6, :cond_1

    .line 362
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 361
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 362
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getThemeIDByPath(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 369
    const/4 v8, -0x1

    .line 371
    .local v8, id:I
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 372
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v0, "path=?"

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 374
    .local v9, whereString:Ljava/lang/StringBuffer;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    .line 377
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 384
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 385
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 386
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 391
    :cond_0
    if-eqz v6, :cond_1

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_1
    :goto_0
    return v8

    .line 388
    :catch_0
    move-exception v7

    .line 389
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    if-eqz v6, :cond_1

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 391
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getThemeKey(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 448
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v9, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuffer;

    const-string v0, "path=?"

    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 450
    .local v11, whereString:Ljava/lang/StringBuffer;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "key"

    aput-object v0, v2, v1

    const-string v0, "title"

    aput-object v0, v2, v3

    .line 455
    .local v2, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 456
    .local v8, key:Ljava/lang/String;
    const/4 v10, 0x0

    .line 457
    .local v10, title:Ljava/lang/String;
    const/4 v6, 0x0

    .line 460
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 465
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 467
    const-string v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 468
    const-string v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 473
    :cond_0
    if-eqz v6, :cond_1

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_1
    :goto_0
    const-string v0, "ThemeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " title "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    if-eqz v8, :cond_2

    .line 480
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_2
    return-object v9

    .line 470
    :catch_0
    move-exception v7

    .line 471
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    if-eqz v6, :cond_1

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 473
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 474
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getThemePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "title"
    .parameter "version"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 406
    const/4 v8, 0x0

    .line 407
    .local v8, path:Ljava/lang/String;
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 408
    invoke-static {p2}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 410
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v0, "title=? AND version=?"

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 412
    .local v9, whereString:Ljava/lang/StringBuffer;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "path"

    aput-object v0, v2, v1

    .line 416
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 419
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 424
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 430
    :cond_0
    if-eqz v6, :cond_1

    .line 431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_1
    :goto_0
    return-object v8

    .line 427
    :catch_0
    move-exception v7

    .line 428
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    if-eqz v6, :cond_1

    .line 431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 430
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getThumbnailFromAssets(Ljava/io/InputStream;Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/HashMap;
    .locals 8
    .parameter "inputstream"
    .parameter
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, previewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, -0x1

    .line 1479
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1480
    .local v4, reValue:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1481
    .local v0, defaultThumb:Ljava/lang/String;
    const-string v3, ""

    .line 1482
    .local v3, icons:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1483
    .local v1, entryName:Ljava/lang/String;
    const-string v5, "preview_launcher"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_3

    .line 1487
    const-string v5, "defaultThumb"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1489
    move-object v0, v1

    .line 1490
    const-string v5, "defaultThumb"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1492
    :cond_1
    const-string v5, "defaultThumb"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "preview_launcher"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 1494
    move-object v0, v1

    .line 1495
    const-string v5, "defaultThumb"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1497
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    .line 1499
    move-object v0, v1

    .line 1500
    const-string v5, "defaultThumb"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1504
    :cond_3
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "icons"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 1505
    move-object v3, v1

    .line 1506
    const-string v5, "icons"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1509
    .end local v1           #entryName:Ljava/lang/String;
    :cond_4
    return-object v4
.end method

.method private static getThumbnailFromZip(Ljava/util/zip/ZipFile;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/HashMap;
    .locals 16
    .parameter "zip"
    .parameter "themeName"
    .parameter "scanScape"
    .parameter "isLockScreenCanUse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1515
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1516
    .local v11, reValue:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_5

    .line 1518
    const/4 v7, 0x0

    .line 1520
    .local v7, fos:Ljava/io/FileOutputStream;
    const-string v1, ""

    .line 1521
    .local v1, defaultThumb:Ljava/lang/String;
    const-string v10, ""

    .line 1522
    .local v10, lockscreen:Ljava/lang/String;
    const-string v8, ""

    .line 1523
    .local v8, icons:Ljava/lang/String;
    const-string v12, ""

    .line 1524
    .local v12, statusbar:Ljava/lang/String;
    const-string v6, ""

    .line 1525
    .local v6, fonts:Ljava/lang/String;
    const-string v13, ""

    .line 1526
    .local v13, wallpaper:Ljava/lang/String;
    const-string v9, ""

    .line 1528
    .local v9, lock_wallpaper:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1530
    .local v3, entry:Ljava/util/zip/ZipEntry;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 1531
    .local v5, enumer:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1532
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/util/zip/ZipEntry;

    move-object v3, v0

    .line 1533
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1535
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "preview/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_b

    .line 1536
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1538
    .local v4, entryName:Ljava/lang/String;
    const-string v14, "preview_launcher"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_9

    .line 1542
    const-string v14, "defaultThumb"

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_6

    .line 1544
    move-object v1, v4

    .line 1545
    const-string v14, "defaultThumb"

    invoke-virtual {v11, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    :cond_1
    :goto_1
    const-string v14, ""

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "lockscreen"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    .line 1570
    move-object v10, v4

    .line 1571
    const-string v14, "lockscreen"

    invoke-virtual {v11, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    :cond_2
    const-string v14, ""

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "icons"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    .line 1574
    move-object v8, v4

    .line 1575
    const-string v14, "icons"

    invoke-virtual {v11, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    :cond_3
    const-string v14, ""

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "fonts"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    .line 1578
    move-object v6, v4

    .line 1579
    const-string v14, "fonts"

    invoke-virtual {v11, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    :cond_4
    const-string v14, ""

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "statusbar"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 1582
    move-object v12, v4

    .line 1583
    const-string v14, "com.android.systemui"

    invoke-virtual {v11, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1598
    .end local v4           #entryName:Ljava/lang/String;
    .end local v5           #enumer:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :catch_0
    move-exception v2

    .line 1599
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1602
    if-eqz v7, :cond_5

    .line 1603
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1610
    .end local v1           #defaultThumb:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .end local v3           #entry:Ljava/util/zip/ZipEntry;
    .end local v6           #fonts:Ljava/lang/String;
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v8           #icons:Ljava/lang/String;
    .end local v9           #lock_wallpaper:Ljava/lang/String;
    .end local v10           #lockscreen:Ljava/lang/String;
    .end local v12           #statusbar:Ljava/lang/String;
    .end local v13           #wallpaper:Ljava/lang/String;
    :cond_5
    :goto_2
    return-object v11

    .line 1547
    .restart local v1       #defaultThumb:Ljava/lang/String;
    .restart local v3       #entry:Ljava/util/zip/ZipEntry;
    .restart local v4       #entryName:Ljava/lang/String;
    .restart local v5       #enumer:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v6       #fonts:Ljava/lang/String;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #icons:Ljava/lang/String;
    .restart local v9       #lock_wallpaper:Ljava/lang/String;
    .restart local v10       #lockscreen:Ljava/lang/String;
    .restart local v12       #statusbar:Ljava/lang/String;
    .restart local v13       #wallpaper:Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v14, "defaultThumb"

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "preview_launcher"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_8

    .line 1549
    move-object v1, v4

    .line 1550
    const-string v14, "defaultThumb"

    invoke-virtual {v11, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1601
    .end local v4           #entryName:Ljava/lang/String;
    .end local v5           #enumer:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :catchall_0
    move-exception v14

    .line 1602
    if-eqz v7, :cond_7

    .line 1603
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1607
    :cond_7
    :goto_3
    throw v14

    .line 1552
    .restart local v4       #entryName:Ljava/lang/String;
    .restart local v5       #enumer:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    :cond_8
    :try_start_5
    invoke-virtual {v4, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_1

    .line 1554
    move-object v1, v4

    .line 1555
    const-string v14, "defaultThumb"

    invoke-virtual {v11, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1559
    :cond_9
    const-string v14, "preview/"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    .line 1560
    const-string v14, "preview_launcher"

    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    const-string v14, "preview_"

    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    .line 1562
    move-object v1, v4

    .line 1563
    const-string v14, "defaultThumb"

    invoke-virtual {v11, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1565
    :cond_a
    const-string v14, ""

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "wallpaper"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 1566
    move-object v1, v4

    .line 1567
    const-string v14, "defaultThumb"

    invoke-virtual {v11, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1585
    .end local v4           #entryName:Ljava/lang/String;
    :cond_b
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "wallpaper/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 1586
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1587
    .restart local v4       #entryName:Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "wallpaper"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_c

    const-string v14, "lock_wallpaper"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_c

    .line 1589
    move-object v13, v4

    .line 1590
    const-string v14, "wallpaper"

    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1591
    :cond_c
    const-string v14, ""

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "lock_wallpaper"

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    .line 1593
    move-object v9, v4

    .line 1594
    const-string v14, "lockwallpaper"

    invoke-virtual {v11, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1602
    .end local v4           #entryName:Ljava/lang/String;
    :cond_d
    if-eqz v7, :cond_5

    .line 1603
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1605
    :catch_1
    move-exception v2

    .line 1606
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1605
    .end local v5           #enumer:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .local v2, e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 1606
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 1605
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 1606
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "aContext"
    .parameter "aPackageName"

    .prologue
    .line 753
    const/4 v1, 0x0

    .line 755
    .local v1, lResult:Z
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    const/4 v1, 0x1

    .line 760
    :goto_0
    return v1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPathExist(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 312
    const/4 v8, -0x1

    .line 314
    .local v8, result:I
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v0, "path=?"

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 315
    .local v9, whereString:Ljava/lang/StringBuffer;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 318
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 320
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 325
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 331
    :cond_0
    if-eqz v6, :cond_1

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_1
    :goto_0
    return v8

    .line 328
    :catch_0
    move-exception v7

    .line 329
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    if-eqz v6, :cond_1

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 331
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 332
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isSupprotType(Ljava/lang/String;)Z
    .locals 6
    .parameter "fileType"

    .prologue
    .line 115
    const/4 v4, 0x0

    .line 116
    .local v4, support:Z
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->SUPPORT_FILE_TYPE:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 117
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    const/4 v4, 0x1

    .line 123
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    return v4

    .line 116
    .restart local v3       #str:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isSupprotWallpaperTempType(Ljava/lang/String;)Z
    .locals 9
    .parameter "filePath"

    .prologue
    .line 1686
    const/4 v6, 0x0

    .line 1687
    .local v6, support:Z
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1688
    .local v1, fileTyepPos:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1689
    .local v2, fileType:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 1690
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->SUPPORT_TEMP_TYPE:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 1691
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1692
    const/4 v6, 0x1

    .line 1697
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #str:Ljava/lang/String;
    :cond_0
    return v6

    .line 1688
    .end local v2           #fileType:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1690
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #fileType:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #str:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isSupprotWallpaperType(Ljava/lang/String;)Z
    .locals 9
    .parameter "filePath"

    .prologue
    .line 1665
    const/4 v6, 0x0

    .line 1666
    .local v6, support:Z
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1667
    .local v1, fileTyepPos:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1668
    .local v2, fileType:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 1669
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->SUPPORT_WALLPAPER_TYPE:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 1670
    .local v5, str:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1671
    const/4 v6, 0x1

    .line 1676
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #str:Ljava/lang/String;
    :cond_0
    return v6

    .line 1667
    .end local v2           #fileType:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1669
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #fileType:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #str:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isTitleAndVersionExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "context"
    .parameter "title"
    .parameter "version"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 272
    const/4 v8, -0x1

    .line 273
    .local v8, result:I
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-static {p2}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 276
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v0, "title=? AND version=?"

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 279
    .local v9, whereString:Ljava/lang/StringBuffer;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 283
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 286
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 290
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 298
    :cond_0
    if-eqz v6, :cond_1

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_1
    :goto_0
    return v8

    .line 295
    :catch_0
    move-exception v7

    .line 296
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    if-eqz v6, :cond_1

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 298
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 299
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static isVersionNeedUpdate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12
    .parameter "ctx"
    .parameter "path"

    .prologue
    const/4 v10, 0x0

    .line 134
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 135
    .local v7, result:Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 136
    .local v5, oldVersion:Ljava/lang/String;
    const/4 v4, 0x0

    .line 137
    .local v4, newVersion:Ljava/lang/String;
    const/4 v8, 0x0

    .line 138
    .local v8, zip:Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 139
    .local v1, des:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 140
    .local v0, assets:Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 141
    .local v3, in:Ljava/io/InputStream;
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 143
    .local v6, pro:Ljava/util/Properties;
    :try_start_0
    const-string v10, "version.properties"

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 144
    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 145
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .local v9, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-static {v9, p0, p1}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getDescriptionFromZip(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    const-string v10, "version"

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/baidu/launcher/thememanager/util/Utils;->checkIllegalOnItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    :cond_0
    sget-object v10, Lcom/baidu/launcher/thememanager/util/StorageUtil;->DEFAULTTHEME:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 151
    const-string v10, "default"

    invoke-virtual {v6, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    :cond_1
    invoke-static {p0, v4, v5}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->VersionCompare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v7

    .line 163
    if-eqz v3, :cond_2

    .line 164
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v8, v9

    .line 169
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    :cond_3
    :goto_0
    return-object v7

    .line 165
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v2

    .line 166
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .line 168
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 158
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 160
    .restart local v2       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    if-eqz v3, :cond_3

    .line 164
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 165
    :catch_2
    move-exception v2

    .line 166
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 163
    :goto_2
    if-eqz v3, :cond_4

    .line 164
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 167
    :cond_4
    :goto_3
    throw v10

    .line 165
    :catch_3
    move-exception v2

    .line 166
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 162
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 158
    .end local v8           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v2

    move-object v8, v9

    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v8       #zip:Ljava/util/zip/ZipFile;
    goto :goto_1
.end method

.method public static isWallpaperExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "originalUrl"

    .prologue
    .line 1707
    const/4 v3, 0x0

    .line 1711
    .local v3, result:Z
    :try_start_0
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getWallpaperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1712
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1713
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1714
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isImageFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1722
    .end local v1           #file:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 1717
    :catch_0
    move-exception v0

    .line 1718
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1719
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public static isWallpaperPathExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1732
    const/4 v8, 0x0

    .line 1734
    .local v8, result:Z
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v0, "item_path=?"

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1735
    .local v9, whereString:Ljava/lang/StringBuffer;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 1738
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1740
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->WALLPAPER_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1743
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1744
    const/4 v8, 0x1

    .line 1749
    :cond_0
    if-eqz v6, :cond_1

    .line 1750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1753
    :cond_1
    :goto_0
    return v8

    .line 1746
    :catch_0
    move-exception v7

    .line 1747
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1749
    if-eqz v6, :cond_1

    .line 1750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1749
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static sendStatusNotifition(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "aContext"
    .parameter "id"
    .parameter "theme_title"
    .parameter "filePath"
    .parameter "scanType"

    .prologue
    .line 1616
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.thememanager.ui.parsestatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1617
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.baidu.thememanager.extra.filepath"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    const-string v1, "com.baidu.thememanager.extra.insertresult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1619
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1620
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 1622
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->sendDownloadSuccessNoti(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 1624
    :cond_0
    return-void
.end method

.method private static declared-synchronized unzipTheme(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 24
    .parameter "zip"
    .parameter "themeName"
    .parameter "localpath"
    .parameter "ctx"

    .prologue
    .line 1318
    const-class v22, Lcom/baidu/launcher/thememanager/util/ThemeUtils;

    monitor-enter v22

    const/4 v14, 0x0

    .line 1319
    .local v14, flag:Z
    :try_start_0
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDiskRoot()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1320
    .local v13, filePath:Ljava/lang/StringBuffer;
    sget-object v21, Lcom/baidu/launcher/thememanager/util/Constants;->THEME_CACHE_DIR:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1322
    if-eqz p1, :cond_4

    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    if-eqz p0, :cond_4

    .line 1323
    new-instance v20, Ljava/io/File;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1324
    .local v20, tmpFileDir:Ljava/io/File;
    invoke-static/range {v20 .. v20}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 1325
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 1326
    const/16 v17, 0x0

    .line 1327
    .local v17, in:Ljava/io/DataInputStream;
    const/4 v15, 0x0

    .line 1328
    .local v15, fos:Ljava/io/FileOutputStream;
    const/16 v21, 0x4000

    move/from16 v0, v21

    new-array v3, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    .local v3, buffer:[B
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v10

    .local v10, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    move-object/from16 v16, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .local v16, fos:Ljava/io/FileOutputStream;
    move-object/from16 v18, v17

    .line 1331
    .end local v17           #in:Ljava/io/DataInputStream;
    .local v18, in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1332
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/zip/ZipEntry;

    .line 1333
    .local v11, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v21

    if-nez v21, :cond_0

    .line 1335
    new-instance v17, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8

    .line 1336
    .end local v18           #in:Ljava/io/DataInputStream;
    .restart local v17       #in:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1337
    .local v12, entryName:Ljava/lang/String;
    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 1338
    .local v6, dex:I
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1339
    .local v5, currentOutFilePath:Ljava/lang/String;
    if-lez v6, :cond_1

    .line 1340
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1342
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1343
    .local v4, currentFileDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1345
    .end local v4           #currentFileDir:Ljava/io/File;
    :cond_1
    new-instance v15, Ljava/io/FileOutputStream;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_9

    .line 1346
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    .line 1347
    .local v19, len:I
    :goto_1
    const/16 v21, 0x0

    const/16 v23, 0x4000

    :try_start_4
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v19

    if-lez v19, :cond_5

    .line 1348
    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v15, v3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    .line 1356
    .end local v5           #currentOutFilePath:Ljava/lang/String;
    .end local v6           #dex:I
    .end local v10           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v11           #entry:Ljava/util/zip/ZipEntry;
    .end local v12           #entryName:Ljava/lang/String;
    .end local v19           #len:I
    :catch_0
    move-exception v9

    .line 1357
    .local v9, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 1359
    if-eqz p2, :cond_2

    const-string v21, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 1360
    const-string v21, "theme/ICON"

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadIdByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    .line 1361
    .local v7, downloadId:J
    move-object/from16 v0, p3

    invoke-static {v0, v7, v8}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownload(Landroid/content/Context;J)V

    .line 1362
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1371
    .end local v7           #downloadId:J
    :cond_2
    if-eqz v17, :cond_3

    .line 1372
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    .line 1374
    :cond_3
    if-eqz v15, :cond_4

    .line 1375
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1382
    .end local v3           #buffer:[B
    .end local v9           #e:Ljava/io/IOException;
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v17           #in:Ljava/io/DataInputStream;
    .end local v20           #tmpFileDir:Ljava/io/File;
    :cond_4
    :goto_3
    monitor-exit v22

    return v14

    .line 1350
    .restart local v3       #buffer:[B
    .restart local v5       #currentOutFilePath:Ljava/lang/String;
    .restart local v6       #dex:I
    .restart local v10       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v11       #entry:Ljava/util/zip/ZipEntry;
    .restart local v12       #entryName:Ljava/lang/String;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v17       #in:Ljava/io/DataInputStream;
    .restart local v19       #len:I
    .restart local v20       #tmpFileDir:Ljava/io/File;
    :cond_5
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 1351
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileDescriptor;->sync()V

    .line 1352
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 1353
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5

    move-object/from16 v16, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v18, v17

    .line 1354
    .end local v17           #in:Ljava/io/DataInputStream;
    .restart local v18       #in:Ljava/io/DataInputStream;
    goto/16 :goto_0

    .line 1355
    .end local v5           #currentOutFilePath:Ljava/lang/String;
    .end local v6           #dex:I
    .end local v11           #entry:Ljava/util/zip/ZipEntry;
    .end local v12           #entryName:Ljava/lang/String;
    .end local v19           #len:I
    :cond_6
    const/4 v14, 0x1

    .line 1371
    if-eqz v18, :cond_7

    .line 1372
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V

    .line 1374
    :cond_7
    if-eqz v16, :cond_4

    .line 1375
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 1377
    :catch_1
    move-exception v9

    .line 1378
    .local v9, e:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 1318
    .end local v3           #buffer:[B
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v13           #filePath:Ljava/lang/StringBuffer;
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .end local v18           #in:Ljava/io/DataInputStream;
    .end local v20           #tmpFileDir:Ljava/io/File;
    :catchall_0
    move-exception v21

    monitor-exit v22

    throw v21

    .line 1377
    .restart local v3       #buffer:[B
    .local v9, e:Ljava/io/IOException;
    .restart local v13       #filePath:Ljava/lang/StringBuffer;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v17       #in:Ljava/io/DataInputStream;
    .restart local v20       #tmpFileDir:Ljava/io/File;
    :catch_2
    move-exception v9

    .line 1378
    .local v9, e:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 1365
    .end local v9           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 1366
    .local v9, e:Ljava/lang/IllegalStateException;
    :goto_4
    :try_start_b
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1371
    if-eqz v17, :cond_8

    .line 1372
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    .line 1374
    :cond_8
    if-eqz v15, :cond_4

    .line 1375
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_3

    .line 1377
    :catch_4
    move-exception v9

    .line 1378
    .local v9, e:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 1367
    .end local v9           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 1368
    .local v9, e:Ljava/lang/NullPointerException;
    :goto_5
    :try_start_e
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1371
    if-eqz v17, :cond_9

    .line 1372
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    .line 1374
    :cond_9
    if-eqz v15, :cond_4

    .line 1375
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_3

    .line 1377
    :catch_6
    move-exception v9

    .line 1378
    .local v9, e:Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_3

    .line 1370
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v21

    .line 1371
    :goto_6
    if-eqz v17, :cond_a

    .line 1372
    :try_start_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    .line 1374
    :cond_a
    if-eqz v15, :cond_b

    .line 1375
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 1379
    :cond_b
    :goto_7
    :try_start_12
    throw v21

    .line 1377
    :catch_7
    move-exception v9

    .line 1378
    .restart local v9       #e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_7

    .line 1370
    .end local v9           #e:Ljava/lang/Exception;
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v17           #in:Ljava/io/DataInputStream;
    .restart local v10       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #in:Ljava/io/DataInputStream;
    :catchall_2
    move-exception v21

    move-object/from16 v15, v16

    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18           #in:Ljava/io/DataInputStream;
    .restart local v17       #in:Ljava/io/DataInputStream;
    goto :goto_6

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #entry:Ljava/util/zip/ZipEntry;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v21

    move-object/from16 v15, v16

    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 1367
    .end local v11           #entry:Ljava/util/zip/ZipEntry;
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v17           #in:Ljava/io/DataInputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #in:Ljava/io/DataInputStream;
    :catch_8
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18           #in:Ljava/io/DataInputStream;
    .restart local v17       #in:Ljava/io/DataInputStream;
    goto :goto_5

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #entry:Ljava/util/zip/ZipEntry;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 1365
    .end local v11           #entry:Ljava/util/zip/ZipEntry;
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v17           #in:Ljava/io/DataInputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #in:Ljava/io/DataInputStream;
    :catch_a
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18           #in:Ljava/io/DataInputStream;
    .restart local v17       #in:Ljava/io/DataInputStream;
    goto :goto_4

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #entry:Ljava/util/zip/ZipEntry;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 1356
    .end local v11           #entry:Ljava/util/zip/ZipEntry;
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v17           #in:Ljava/io/DataInputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #in:Ljava/io/DataInputStream;
    :catch_c
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18           #in:Ljava/io/DataInputStream;
    .restart local v17       #in:Ljava/io/DataInputStream;
    goto/16 :goto_2

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v11       #entry:Ljava/util/zip/ZipEntry;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public static validAPKData(Landroid/content/Context;)V
    .locals 15
    .parameter "ctx"

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 909
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDiskRoot()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 910
    .local v11, theme_dir_str:Ljava/lang/StringBuilder;
    sget-object v0, Lcom/baidu/launcher/thememanager/util/Constants;->THEME_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    new-array v2, v14, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v12

    const-string v0, "key"

    aput-object v0, v2, v13

    .line 916
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "theme_type>? and path=?"

    .line 918
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v10

    .line 919
    .local v10, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 920
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 922
    .local v9, p:Landroid/content/pm/PackageInfo;
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.baidu.launcher.theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 923
    const/4 v6, 0x0

    .line 924
    .local v6, cursor:Landroid/database/Cursor;
    new-array v4, v14, [Ljava/lang/String;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v0, v4, v13

    .line 928
    .local v4, selectionArgs:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 932
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    .line 937
    :cond_0
    if-eqz v6, :cond_1

    .line 938
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 919
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 934
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 935
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    if-eqz v6, :cond_1

    .line 938
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 937
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 938
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 943
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #p:Landroid/content/pm/PackageInfo;
    :cond_3
    return-void
.end method

.method public static validDBAPKData(Landroid/content/Context;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 841
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "key"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "path"

    aput-object v3, v4, v2

    .line 846
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "theme_type>?"

    .line 847
    .local v5, selection:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 850
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 852
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 857
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 858
    const/4 v14, 0x0

    .line 860
    .local v14, isChange:Z
    :cond_0
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 861
    .local v8, _id:I
    const-string v2, "key"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 862
    .local v9, _key:Ljava/lang/String;
    const-string v2, "path"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 863
    .local v10, _path:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 864
    const/4 v14, 0x1

    .line 865
    new-instance v17, Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    const/4 v2, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v2}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;-><init>(Landroid/content/Context;II)V

    .line 866
    .local v17, themeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->init()V

    .line 867
    invoke-virtual/range {v17 .. v17}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getComponentList()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->checkDelete(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 868
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->restoreDefaultTheme(Landroid/content/Context;Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper$ApplyCallBack;)I

    .line 869
    const-string v2, "com.baidu.launcher.theme.changed"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/baidu/launcher/thememanager/util/Utils;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    .line 871
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    .local v13, intent:Landroid/content/Intent;
    const-class v2, Lcom/baidu/launcher/app/Launcher;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 873
    const/high16 v2, 0x1000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 874
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 877
    .end local v13           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v18, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 878
    .local v18, themeString:Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v7, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 881
    new-instance v16, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "theme_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 883
    .local v16, themeContentString:Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v7, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 886
    .end local v16           #themeContentString:Ljava/lang/StringBuffer;
    .end local v17           #themeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    .end local v18           #themeString:Ljava/lang/StringBuffer;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 888
    if-eqz v14, :cond_3

    .line 889
    new-instance v15, Landroid/content/Intent;

    const-string v2, "com.baidu.thememanager.action.downloadstatechange"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 890
    .local v15, it:Landroid/content/Intent;
    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CHANGE_TYPE:Ljava/lang/String;

    sget v3, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CHANGE_TYPE_RESTORE:I

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 891
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v8           #_id:I
    .end local v9           #_key:Ljava/lang/String;
    .end local v10           #_path:Ljava/lang/String;
    .end local v14           #isChange:Z
    .end local v15           #it:Landroid/content/Intent;
    :cond_3
    :goto_0
    if-eqz v11, :cond_4

    .line 901
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 904
    :cond_4
    :goto_1
    return-void

    .line 894
    :cond_5
    :try_start_1
    const-string v3, "ThemeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v11, :cond_6

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 897
    :catch_0
    move-exception v12

    .line 898
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 900
    if-eqz v11, :cond_4

    .line 901
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 894
    .end local v12           #e:Ljava/lang/Exception;
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 900
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_8

    .line 901
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2
.end method

.method public static validDBData(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 771
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "key"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "path"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "theme_type"

    aput-object v2, v3, v1

    .line 778
    .local v3, projection:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 780
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 785
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 786
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 789
    :cond_0
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 790
    .local v7, _id:I
    const-string v1, "key"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 791
    .local v8, _key:Ljava/lang/String;
    const-string v1, "path"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 792
    .local v9, _path:Ljava/lang/String;
    const-string v1, "theme_type"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 793
    .local v16, type:I
    const/16 v1, 0x64

    move/from16 v0, v16

    if-le v0, v1, :cond_3

    .line 794
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 796
    new-instance v15, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 797
    .local v15, themeString:Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 800
    new-instance v14, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 802
    .local v14, themeContentString:Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 823
    .end local v14           #themeContentString:Ljava/lang/StringBuffer;
    .end local v15           #themeString:Ljava/lang/StringBuffer;
    :cond_1
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 832
    .end local v7           #_id:I
    .end local v8           #_key:Ljava/lang/String;
    .end local v9           #_path:Ljava/lang/String;
    .end local v16           #type:I
    :goto_1
    if-eqz v11, :cond_2

    .line 833
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 836
    :cond_2
    :goto_2
    return-void

    .line 807
    .restart local v7       #_id:I
    .restart local v8       #_key:Ljava/lang/String;
    .restart local v9       #_path:Ljava/lang/String;
    .restart local v16       #type:I
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v8, v1}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getSrcThemePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isPathExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 809
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8, v9}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->deleteTheme(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 813
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    .local v10, _srcTheme:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 816
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 817
    .local v13, intent:Landroid/content/Intent;
    const-string v1, "com.baidu.thememanager.ui.openfile"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    const-string v1, "com.baidu.thememanager.extra.downloadpath"

    invoke-virtual {v13, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 829
    .end local v7           #_id:I
    .end local v8           #_key:Ljava/lang/String;
    .end local v9           #_path:Ljava/lang/String;
    .end local v10           #_srcTheme:Ljava/io/File;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v16           #type:I
    :catch_0
    move-exception v12

    .line 830
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 832
    if-eqz v11, :cond_2

    .line 833
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 826
    .end local v12           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_3
    const-string v2, "ThemeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v11, :cond_6

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 832
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_5

    .line 833
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 826
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static validDatabase(Landroid/content/Context;)V
    .locals 11
    .parameter "ctx"

    .prologue
    .line 1841
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "item_path"

    aput-object v1, v2, v0

    .line 1845
    .local v2, projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1847
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->WALLPAPER_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1848
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1850
    :cond_0
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1851
    .local v8, id:I
    const-string v0, "item_path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1853
    .local v9, path:Ljava/lang/String;
    invoke-static {v9}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isPathExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1854
    new-instance v10, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1855
    .local v10, themeString:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->WALLPAPER_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1857
    .end local v10           #themeString:Ljava/lang/StringBuffer;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 1863
    .end local v8           #id:I
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 1864
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1867
    :cond_3
    :goto_0
    return-void

    .line 1860
    :catch_0
    move-exception v7

    .line 1861
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1863
    if-eqz v6, :cond_3

    .line 1864
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1863
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1864
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static validDirData(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    .line 947
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDiskRoot()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 948
    .local v14, theme_dir_str:Ljava/lang/StringBuilder;
    sget-object v0, Lcom/baidu/launcher/thememanager/util/Constants;->THEME_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "key"

    aput-object v1, v2, v0

    .line 955
    .local v2, projection:[Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 956
    .local v13, theme_dir:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 957
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 958
    .local v10, files:[Ljava/io/File;
    if-eqz v10, :cond_3

    .line 959
    move-object v6, v10

    .local v6, arr$:[Ljava/io/File;
    array-length v12, v6

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_3

    aget-object v9, v6, v11

    .line 961
    .local v9, f:Ljava/io/File;
    const/4 v7, 0x0

    .line 963
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 967
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    .line 975
    :goto_1
    if-eqz v7, :cond_0

    .line 976
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 959
    :cond_0
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 970
    :cond_1
    :try_start_1
    invoke-static {v9}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 972
    :catch_0
    move-exception v8

    .line 973
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 975
    if-eqz v7, :cond_0

    .line 976
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 975
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 976
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 982
    .end local v6           #arr$:[Ljava/io/File;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #f:Ljava/io/File;
    .end local v10           #files:[Ljava/io/File;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :cond_3
    return-void
.end method
