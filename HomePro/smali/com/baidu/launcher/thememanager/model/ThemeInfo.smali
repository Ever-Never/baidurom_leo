.class public Lcom/baidu/launcher/thememanager/model/ThemeInfo;
.super Ljava/lang/Object;
.source "ThemeInfo.java"


# static fields
.field private static comp:Ljava/util/Comparator;


# instance fields
.field private isThemeConstants:Z

.field public mAuthor:Ljava/lang/String;

.field private mComponentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentShowNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mDesigner:Ljava/lang/String;

.field private mDetailInfo:[Ljava/lang/CharSequence;

.field public mId:I

.field public mKey:Ljava/lang/String;

.field public mLastModified:J

.field public mPath:Ljava/lang/String;

.field public mPreview:Ljava/lang/String;

.field private mPreviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSize:J

.field public mThemeLevel:I

.field public mThemeType:I

.field public mTitle:Ljava/lang/String;

.field public mType:I

.field public mUIVersion:Ljava/lang/String;

.field public mVersion:Ljava/lang/String;

.field private themeHashMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/baidu/launcher/thememanager/model/ThemeInfo$1;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/model/ThemeInfo$1;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->comp:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "aContext"
    .parameter "aId"
    .parameter "aType"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPath:Ljava/lang/String;

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mSize:J

    .line 39
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mThemeLevel:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreview:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mComponentList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mComponentShowNameList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->themeHashMap:Ljava/util/HashMap;

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mDetailInfo:[Ljava/lang/CharSequence;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    .line 60
    iput p3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mType:I

    .line 61
    iput p2, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mId:I

    .line 62
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mContext:Landroid/content/Context;

    .line 64
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 65
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreview:[Ljava/lang/String;

    iget v1, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mType:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreview:Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method

.method private BubbleSort()V
    .locals 7

    .prologue
    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, tmp:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 282
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 283
    sget-object v3, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->comp:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tmp:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 285
    .restart local v2       #tmp:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v1           #j:I
    :cond_2
    return-void
.end method

.method private findImage(Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .parameter "file"
    .parameter "filter"

    .prologue
    .line 292
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 293
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 294
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 295
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 296
    .local v1, f:Ljava/io/File;
    invoke-direct {p0, v1, p2}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->findImage(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/launcher/thememanager/util/Utils;->isPic(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 302
    if-nez p2, :cond_2

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, path:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/util/Utils;->isIncludeNotLauncher(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 306
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v5           #path:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 309
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 310
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getPreviewsList()V
    .locals 4

    .prologue
    .line 224
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mKey:Ljava/lang/String;

    const-string v3, "preview"

    invoke-static {v2, v3}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getSrcThemePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->findImage(Ljava/io/File;Ljava/lang/String;)V

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->BubbleSort()V

    .line 237
    return-void
.end method

.method private getPreviewsListFromApk()V
    .locals 9

    .prologue
    .line 240
    const/4 v2, 0x0

    .line 242
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 244
    .local v3, pm:Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 245
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "preview_list.xml"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 247
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->getPreviewList(Ljava/io/InputStream;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 256
    if-eqz v2, :cond_0

    .line 258
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #resources:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->BubbleSort()V

    .line 273
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 274
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 275
    .local v5, tmp:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/theme/preview/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    .end local v1           #i:I
    .end local v5           #tmp:Ljava/lang/String;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    .restart local v4       #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #resources:Landroid/content/res/Resources;
    :catch_1
    move-exception v0

    .line 251
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    if-eqz v2, :cond_0

    .line 258
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 259
    :catch_2
    move-exception v0

    .line 261
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 252
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 254
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    if-eqz v2, :cond_0

    .line 258
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 259
    :catch_4
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 256
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_1

    .line 258
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 262
    :cond_1
    :goto_2
    throw v6

    .line 259
    :catch_5
    move-exception v0

    .line 261
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 277
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    :cond_2
    return-void
.end method

.method private initComponentList(I)V
    .locals 12
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v10, hashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "theme_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 158
    .local v11, whereString:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "component"

    aput-object v0, v2, v3

    .line 162
    .local v2, component:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 164
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 167
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 168
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 170
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, com:Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sUnComponentSet:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/baidu/launcher/thememanager/util/Utils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 175
    .local v7, comp:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 177
    invoke-virtual {v10, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->isThemeConstants:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sThemeComponentSet:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mComponentShowNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v7           #comp:Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 190
    .end local v6           #com:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_4
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v9

    .line 187
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    if-eqz v8, :cond_4

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 190
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private loadThemeInfo()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    const/4 v6, 0x0

    .line 92
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 94
    .local v8, whereString:Ljava/lang/StringBuffer;
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v3

    const-string v0, "uiVersion"

    aput-object v0, v2, v4

    const-string v0, "version"

    aput-object v0, v2, v5

    const-string v0, "author"

    aput-object v0, v2, v9

    const-string v0, "key"

    aput-object v0, v2, v10

    const/4 v0, 0x5

    const-string v1, "designer"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "themesize"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "path"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "theme_level"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "theme_type"

    aput-object v1, v2, v0

    .line 108
    .local v2, component:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 111
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 115
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mTitle:Ljava/lang/String;

    .line 116
    const-string v0, "uiVersion"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mUIVersion:Ljava/lang/String;

    .line 117
    const-string v0, "version"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mVersion:Ljava/lang/String;

    .line 118
    const-string v0, "author"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mAuthor:Ljava/lang/String;

    .line 119
    const-string v0, "designer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mDesigner:Ljava/lang/String;

    .line 120
    const-string v0, "themesize"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mSize:J

    .line 121
    const-string v0, "path"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPath:Ljava/lang/String;

    .line 122
    const-string v0, "theme_level"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mThemeLevel:I

    .line 123
    const-string v0, "theme_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mThemeType:I

    .line 124
    const-string v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mKey:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mDetailInfo:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 127
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mDetailInfo:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mUIVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 128
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mDetailInfo:[Ljava/lang/CharSequence;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 129
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mDetailInfo:[Ljava/lang/CharSequence;

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mAuthor:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mDetailInfo:[Ljava/lang/CharSequence;

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mDesigner:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 131
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mDetailInfo:[Ljava/lang/CharSequence;

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    if-eqz v6, :cond_1

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v7

    .line 134
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    if-eqz v6, :cond_1

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 137
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public getAppNameList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mComponentShowNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getComponentList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mComponentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDetailInfo()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mDetailInfo:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mPreviews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThemeLevel()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mThemeLevel:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->loadThemeInfo()V

    .line 73
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mId:I

    invoke-direct {p0, v0}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->initComponentList(I)V

    .line 74
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mThemeType:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getPreviewsListFromApk()V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getPreviewsList()V

    goto :goto_0
.end method
