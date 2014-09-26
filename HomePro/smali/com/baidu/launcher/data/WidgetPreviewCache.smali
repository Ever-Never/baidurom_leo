.class public Lcom/baidu/launcher/data/WidgetPreviewCache;
.super Ljava/lang/Object;
.source "WidgetPreviewCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/baidu/launcher/data/WidgetPreviewCache; = null

.field private static final sWidgetPreviewIconPaddingPercentage:F = 0.25f


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mAppIconSize:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mWidgetPreview:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private maxWidgetWidth:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mWidgetPreview:Ljava/util/HashMap;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;

    .line 52
    iget-object v1, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, resource:Landroid/content/res/Resources;
    sget v1, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->app_icon_size:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppIconSize:I

    .line 55
    invoke-virtual {p0}, Lcom/baidu/launcher/data/WidgetPreviewCache;->clearPreviews()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/data/WidgetPreviewCache;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getWidgetPreview(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/data/WidgetPreviewCache;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/data/WidgetPreviewCache;Landroid/content/ComponentName;IIIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p6}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getWidgetPreview(Landroid/content/ComponentName;IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/data/WidgetPreviewCache;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mWidgetPreview:Ljava/util/HashMap;

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 321
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 326
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 326
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/WidgetPreviewCache;
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    const-class v1, Lcom/baidu/launcher/data/WidgetPreviewCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mInstance:Lcom/baidu/launcher/data/WidgetPreviewCache;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/baidu/launcher/data/WidgetPreviewCache;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/data/WidgetPreviewCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mInstance:Lcom/baidu/launcher/data/WidgetPreviewCache;

    .line 46
    :cond_0
    sget-object v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mInstance:Lcom/baidu/launcher/data/WidgetPreviewCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getWidgetIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    .line 331
    iget-object v3, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 334
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 338
    .local v2, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 339
    if-eqz p2, :cond_0

    .line 340
    invoke-direct {p0, v2, p2}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 343
    :goto_1
    return-object v3

    .line 335
    .end local v2           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 343
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method private getWidgetPreview(IIII)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "previewImage"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "maxWidth"

    .prologue
    .line 154
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 155
    :cond_0
    const/4 v2, 0x0

    .line 190
    :cond_1
    :goto_0
    return-object v2

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/baidu/launcher/data/WidgetPreviewCache;->initPreviewSize()V

    .line 157
    iget v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->maxWidgetWidth:I

    if-nez v0, :cond_3

    .line 158
    const/4 v2, 0x0

    goto :goto_0

    .line 159
    :cond_3
    iget v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->maxWidgetWidth:I

    if-gez v0, :cond_4

    .line 160
    const v0, 0x7fffffff

    iput v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->maxWidgetWidth:I

    .line 161
    :cond_4
    const/4 v0, -0x1

    if-ne p4, v0, :cond_5

    .line 162
    iget p4, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->maxWidgetWidth:I

    .line 164
    :cond_5
    const/4 v2, 0x0

    .line 165
    .local v2, preview:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 168
    .local v9, res:Landroid/content/res/Resources;
    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 169
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 171
    .local v5, bitmapWidth:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 172
    .local v6, bitmapHeight:I
    const/high16 v10, 0x3f80

    .line 173
    .local v10, scale:F
    if-le v5, p4, :cond_6

    .line 174
    int-to-float v0, p4

    int-to-float v3, v5

    div-float v10, v0, v3

    .line 176
    :cond_6
    const/high16 v0, 0x3f80

    cmpl-float v0, v10, v0

    if-eqz v0, :cond_7

    .line 177
    int-to-float v0, v5

    mul-float/2addr v0, v10

    float-to-int v5, v0

    .line 178
    int-to-float v0, v6

    mul-float/2addr v0, v10

    float-to-int v6, v0

    .line 180
    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 181
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/data/WidgetPreviewCache;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 184
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #bitmapWidth:I
    .end local v6           #bitmapHeight:I
    .end local v9           #res:Landroid/content/res/Resources;
    .end local v10           #scale:F
    :catch_0
    move-exception v7

    .line 185
    .local v7, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 186
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 187
    .local v8, er:Ljava/lang/Error;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getWidgetPreview(Landroid/content/ComponentName;IIIII)Landroid/graphics/Bitmap;
    .locals 25
    .parameter "provider"
    .parameter "previewImage"
    .parameter "iconId"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "maxWidth"

    .prologue
    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/data/WidgetPreviewCache;->initPreviewSize()V

    .line 196
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->maxWidgetWidth:I

    if-nez v3, :cond_0

    const/4 v5, 0x0

    .line 290
    :goto_0
    return-object v5

    .line 197
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 198
    .local v21, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->maxWidgetWidth:I

    if-gez v3, :cond_1

    .line 199
    const v3, 0x7fffffff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->maxWidgetWidth:I

    .line 200
    :cond_1
    const/4 v3, -0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_2

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->maxWidgetWidth:I

    move/from16 p6, v0

    .line 203
    :cond_2
    const/4 v4, 0x0

    .line 204
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_3

    .line 206
    :try_start_0
    const-string v3, "com.baidu.gallery3d"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0200ea

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 223
    :cond_3
    :goto_1
    if-eqz v4, :cond_8

    const/16 v24, 0x1

    .line 224
    .local v24, widgetPreviewExists:Z
    :goto_2
    if-eqz v24, :cond_9

    .line 225
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 226
    .local v8, bitmapWidth:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 244
    .local v9, bitmapHeight:I
    :cond_4
    :goto_3
    const/high16 v22, 0x3f80

    .line 245
    .local v22, scale:F
    move/from16 v0, p6

    if-le v8, v0, :cond_5

    .line 246
    move/from16 v0, p6

    int-to-float v3, v0

    int-to-float v6, v8

    div-float v22, v3, v6

    .line 248
    :cond_5
    const/high16 v3, 0x3f80

    cmpl-float v3, v22, v3

    if-eqz v3, :cond_6

    .line 249
    int-to-float v3, v8

    mul-float v3, v3, v22

    float-to-int v8, v3

    .line 250
    int-to-float v3, v9

    mul-float v3, v3, v22

    float-to-int v9, v3

    .line 253
    :cond_6
    const/4 v5, 0x0

    .line 255
    .local v5, preview:Landroid/graphics/Bitmap;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .line 262
    if-eqz v24, :cond_b

    .line 263
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/baidu/launcher/data/WidgetPreviewCache;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    goto :goto_0

    .line 210
    .end local v5           #preview:Landroid/graphics/Bitmap;
    .end local v8           #bitmapWidth:I
    .end local v9           #bitmapHeight:I
    .end local v22           #scale:F
    .end local v24           #widgetPreviewExists:Z
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto :goto_1

    .line 214
    :catch_0
    move-exception v17

    .line 215
    .local v17, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 216
    .end local v17           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v18

    .line 217
    .local v18, er:Ljava/lang/Error;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 223
    .end local v18           #er:Ljava/lang/Error;
    :cond_8
    const/16 v24, 0x0

    goto :goto_2

    .line 230
    .restart local v24       #widgetPreviewExists:Z
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mCellWidth:I

    mul-int v8, p4, v3

    .line 231
    .restart local v8       #bitmapWidth:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mCellHeight:I

    mul-int v9, p5, v3

    .line 232
    .restart local v9       #bitmapHeight:I
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_4

    .line 235
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppIconSize:I

    int-to-float v3, v3

    const/high16 v6, 0x3e80

    mul-float/2addr v3, v6

    float-to-int v0, v3

    move/from16 v20, v0

    .line 236
    .local v20, minOffset:I
    const/4 v3, 0x1

    move/from16 v0, p4

    if-gt v0, v3, :cond_a

    .line 237
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppIconSize:I

    mul-int/lit8 v6, v20, 0x2

    add-int v9, v3, v6

    move v8, v9

    goto :goto_3

    .line 239
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppIconSize:I

    mul-int/lit8 v6, v20, 0x4

    add-int v9, v3, v6

    move v8, v9

    goto :goto_3

    .line 256
    .end local v20           #minOffset:I
    .restart local v5       #preview:Landroid/graphics/Bitmap;
    .restart local v22       #scale:F
    :catch_2
    move-exception v17

    .line 257
    .restart local v17       #e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 258
    .end local v17           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v18

    .line 259
    .restart local v18       #er:Ljava/lang/Error;
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 267
    .end local v18           #er:Ljava/lang/Error;
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppIconSize:I

    int-to-float v3, v3

    const/high16 v6, 0x3e80

    mul-float/2addr v3, v6

    float-to-int v0, v3

    move/from16 v20, v0

    .line 268
    .restart local v20       #minOffset:I
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 269
    .local v23, smallestSide:I
    move/from16 v0, v23

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppIconSize:I

    mul-int/lit8 v7, v20, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x3f80

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 271
    .local v19, iconScale:F
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_c

    const/4 v3, 0x1

    move/from16 v0, p5

    if-eq v0, v3, :cond_d

    .line 272
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f02010a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object v12, v5

    move v15, v8

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/baidu/launcher/data/WidgetPreviewCache;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 278
    :cond_d
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getWidgetIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 279
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    div-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppIconSize:I

    int-to-float v6, v6

    mul-float v6, v6, v19

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    float-to-int v13, v3

    .line 281
    .local v13, hoffset:I
    div-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppIconSize:I

    int-to-float v6, v6

    mul-float v6, v6, v19

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    float-to-int v14, v3

    .line 284
    .local v14, yoffset:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppIconSize:I

    int-to-float v3, v3

    mul-float v3, v3, v19

    float-to-int v15, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppIconSize:I

    int-to-float v3, v3

    mul-float v3, v3, v19

    float-to-int v0, v3

    move/from16 v16, v0

    move-object/from16 v10, p0

    move-object v12, v5

    invoke-direct/range {v10 .. v16}, Lcom/baidu/launcher/data/WidgetPreviewCache;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 287
    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .end local v13           #hoffset:I
    .end local v14           #yoffset:I
    :catch_4
    move-exception v3

    goto/16 :goto_0
.end method

.method private initPreviewSize()V
    .locals 4

    .prologue
    .line 296
    iget v2, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->maxWidgetWidth:I

    if-nez v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 298
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0b0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    const v3, 0x7f0b0031

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 300
    .local v0, paddingHorizontal:I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->maxWidgetWidth:I

    .line 302
    .end local v0           #paddingHorizontal:I
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 4
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 306
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 307
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 308
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 309
    .local v1, oldBounds:Landroid/graphics/Rect;
    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 310
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 312
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 316
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #oldBounds:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clearPreviews()V
    .locals 3

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mWidgetPreview:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 65
    .local v1, old:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #old:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 69
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mWidgetPreview:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    monitor-exit p0

    return-void
.end method

.method public getPreviewForRealSize(Ljava/lang/Object;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "info"
    .parameter "maxWidth"

    .prologue
    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, b:Landroid/graphics/Bitmap;
    instance-of v0, p1, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v0, :cond_1

    move-object v8, p1

    .line 85
    check-cast v8, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .line 86
    .local v8, lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    iget v0, v8, Lcom/baidu/launcher/data/item/ListWidgetInfo;->previewImage:I

    iget v1, v8, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanX:I

    iget v2, v8, Lcom/baidu/launcher/data/item/ListWidgetInfo;->spanY:I

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getWidgetPreview(IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 92
    .end local v8           #lwi:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    :cond_0
    :goto_0
    return-object v7

    .line 87
    :cond_1
    instance-of v0, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

    move-object v10, p1

    .line 88
    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    .line 89
    .local v10, widgetProvider:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v0, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/baidu/launcher/ui/widget/system/AppWidgetResizeFrame;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v9

    .line 90
    .local v9, span:[I
    iget-object v1, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v2, v10, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v3, v10, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v0, 0x0

    aget v4, v9, v0

    const/4 v0, 0x1

    aget v5, v9, v0

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getWidgetPreview(Landroid/content/ComponentName;IIIII)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0
.end method

.method public intitCellSize(II)V
    .locals 0
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 59
    iput p1, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mCellWidth:I

    .line 60
    iput p2, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mCellHeight:I

    .line 61
    return-void
.end method

.method public setPreview(Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 3
    .parameter "imageview"
    .parameter "info"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/baidu/launcher/data/WidgetPreviewCache;->mWidgetPreview:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 75
    .local v0, preview:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 76
    sget-object v1, Lcom/baidu/launcher/app/LauncherApplication;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/baidu/launcher/data/WidgetPreviewCache$LoadTask;-><init>(Lcom/baidu/launcher/data/WidgetPreviewCache;Landroid/widget/ImageView;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    new-instance v1, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    invoke-direct {v1, v0}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
