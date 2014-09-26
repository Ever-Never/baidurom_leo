.class public Lcom/baidu/launcher/business/BusinessDAOUtil;
.super Ljava/lang/Object;
.source "BusinessDAOUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/baidu/launcher/business/BusinessDAOUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static donwloadIconBitmap(Landroid/content/Context;J)V
    .locals 21
    .parameter "aContext"
    .parameter "aStrategyTableId"

    .prologue
    .line 324
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 325
    const/4 v11, 0x0

    .line 327
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v2, 0x4

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "business._id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "icon"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "icon_url"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "item_type"

    aput-object v3, v4, v2

    .line 333
    .local v4, projection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strategy_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 336
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 338
    :cond_0
    const-string v2, "icon"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 340
    .local v13, icon:[B
    if-nez v13, :cond_5

    .line 341
    const-string v2, "icon_url"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 343
    .local v15, iconurl:Ljava/lang/String;
    const-string v2, "item_type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 345
    .local v18, itemType:I
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 347
    .local v16, id:J
    const/4 v9, 0x0

    .line 348
    .local v9, bitmap:Landroid/graphics/Bitmap;
    if-eqz v15, :cond_5

    .line 349
    invoke-static {v15}, Lcom/baidu/launcher/network/http/DownloadImageTask;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 350
    const/4 v10, 0x2

    .line 351
    .local v10, count:I
    :goto_0
    if-nez v9, :cond_1

    if-lez v10, :cond_1

    .line 352
    invoke-static {v15}, Lcom/baidu/launcher/network/http/DownloadImageTask;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 353
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 355
    :cond_1
    if-eqz v9, :cond_5

    .line 356
    const/4 v2, 0x5

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    .line 359
    :cond_2
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v14

    .line 360
    .local v14, iconSize:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v14, :cond_3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v14, :cond_4

    .line 362
    :cond_3
    const/4 v2, 0x1

    invoke-static {v9, v14, v14, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 364
    .local v8, appIcon:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 365
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v2, v0, v3}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 369
    .end local v8           #appIcon:Landroid/graphics/Bitmap;
    .end local v14           #iconSize:I
    :cond_4
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 370
    .local v20, values:Landroid/content/ContentValues;
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 371
    .local v19, os:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    move-object/from16 v0, v19

    invoke-virtual {v9, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 372
    const-string v2, "icon"

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 379
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #count:I
    .end local v15           #iconurl:Ljava/lang/String;
    .end local v16           #id:J
    .end local v18           #itemType:I
    .end local v19           #os:Ljava/io/ByteArrayOutputStream;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 384
    .end local v13           #icon:[B
    :cond_6
    if-eqz v11, :cond_7

    .line 385
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 388
    .end local v4           #projection:[Ljava/lang/String;
    :cond_7
    :goto_1
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 389
    return-void

    .line 381
    :catch_0
    move-exception v12

    .line 382
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    if-eqz v11, :cond_7

    .line 385
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 384
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_8

    .line 385
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2
.end method

.method public static downloadApk(Landroid/content/Context;J)V
    .locals 20
    .parameter "aContext"
    .parameter "aStrategyTableId"

    .prologue
    .line 393
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 394
    .local v17, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "business._id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "apk_url"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "description"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "strategy_key"

    aput-object v3, v4, v2

    .line 402
    .local v4, projection:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 404
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strategy_id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "item_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 411
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    const-string v2, "strategy_key"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 415
    .local v18, strategyId:J
    :cond_0
    const-string v2, "apk_url"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, apkurl:Ljava/lang/String;
    const-string v2, "title"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 419
    .local v10, title:Ljava/lang/String;
    const-string v2, "description"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 422
    .local v11, description:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 424
    move-wide/from16 v0, v18

    invoke-static {v10, v0, v1}, Lcom/baidu/launcher/utils/StorageUtil;->isBusinessApkFileExit(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v7, :cond_1

    .line 427
    move-wide/from16 v0, v18

    invoke-static {v10, v0, v1}, Lcom/baidu/launcher/utils/StorageUtil;->getBusinessApkFileDir(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    .line 428
    .local v8, dst:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadFileManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadFileManager;

    move-result-object v5

    const-string v9, "application"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, -0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v14}, Lcom/baidu/launcher/network/http/DownloadFileManager;->insertTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)J

    .line 432
    .end local v8           #dst:Ljava/lang/String;
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 437
    .end local v7           #apkurl:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    .end local v11           #description:Ljava/lang/String;
    .end local v18           #strategyId:J
    :cond_2
    if-eqz v15, :cond_3

    .line 438
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_3
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v16

    .line 435
    .local v16, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    if-eqz v15, :cond_3

    .line 438
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 437
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_4

    .line 438
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public static getAllServingAppListFolderName(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 12
    .parameter "aContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    const/4 v6, 0x0

    .line 811
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 814
    .local v11, titleList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 817
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/utils/Constant;->APPLIST_URI:Landroid/net/Uri;

    const-string v3, "isPreset=1 and itemType = 11"

    const/4 v4, 0x0

    const-string v5, "strategy_table_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 826
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 828
    :cond_0
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 830
    .local v10, title:Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 831
    .local v8, id:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    .line 832
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 840
    .end local v8           #id:J
    .end local v10           #title:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 841
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 844
    .end local v2           #projection:[Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v11

    .line 837
    :catch_0
    move-exception v7

    .line 838
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllRecommendApp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 840
    if-eqz v6, :cond_3

    .line 841
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 840
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 841
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getAllServingHomeFolderName(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 12
    .parameter "aContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    const/4 v6, 0x0

    .line 772
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 775
    .local v11, titleList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 778
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/utils/Constant;->HOME_URI:Landroid/net/Uri;

    const-string v3, "isPreset=1 and itemType = 2"

    const/4 v4, 0x0

    const-string v5, "strategy_table_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 787
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 789
    :cond_0
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 791
    .local v10, title:Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 792
    .local v8, id:J
    sget-object v0, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllServingHomeFolderName title:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  id :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    .line 794
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 802
    .end local v8           #id:J
    .end local v10           #title:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 803
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 806
    .end local v2           #projection:[Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v11

    .line 799
    :catch_0
    move-exception v7

    .line 800
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllRecommendApp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    if-eqz v6, :cond_3

    .line 803
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 802
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 803
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getBusinessIdbyBusinessTableId(Landroid/content/Context;J)J
    .locals 12
    .parameter "aContext"
    .parameter "aBusinessTableId"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 879
    const/4 v8, 0x0

    .line 880
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 882
    .local v6, businessId:J
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "business_id"

    aput-object v1, v2, v0

    .line 885
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "business._id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 886
    if-eqz v8, :cond_2

    move v0, v10

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 887
    const-string v0, "business_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 892
    :cond_0
    if-eqz v8, :cond_1

    .line 893
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 896
    .end local v2           #projection:[Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v0, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "businessId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    return-wide v6

    .restart local v2       #projection:[Ljava/lang/String;
    :cond_2
    move v0, v11

    .line 886
    goto :goto_0

    .line 889
    .end local v2           #projection:[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 890
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllRecommendApp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    if-eqz v8, :cond_1

    .line 893
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 892
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 893
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getFolderHasUserApp(Landroid/net/Uri;Landroid/content/Context;J)Z
    .locals 12
    .parameter "aUri"
    .parameter "aContext"
    .parameter "aHomeId"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 848
    const/4 v6, 0x0

    .line 850
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 853
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreset=0 and container = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 861
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 863
    .local v8, id:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    .line 871
    if-eqz v6, :cond_0

    .line 872
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v10

    .line 875
    .end local v2           #projection:[Ljava/lang/String;
    .end local v8           #id:J
    :goto_0
    return v0

    .line 871
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 872
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v2           #projection:[Ljava/lang/String;
    :cond_2
    :goto_1
    move v0, v11

    .line 875
    goto :goto_0

    .line 868
    :catch_0
    move-exception v7

    .line 869
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllRecommendApp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 871
    if-eqz v6, :cond_2

    .line 872
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 871
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 872
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getStrategyTableIdofAppListServing(Landroid/content/Context;)J
    .locals 10
    .parameter "aContext"

    .prologue
    .line 742
    const/4 v6, 0x0

    .line 743
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 745
    .local v8, strategyTableId:J
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "strategy_table_id"

    aput-object v1, v2, v0

    .line 748
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/utils/Constant;->APPLIST_URI:Landroid/net/Uri;

    const-string v3, "isPreset=1"

    const/4 v4, 0x0

    const-string v5, "strategy_table_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 755
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    const-string v0, "strategy_table_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 763
    :cond_0
    if-eqz v6, :cond_1

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 767
    .end local v2           #projection:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v8

    .line 760
    :catch_0
    move-exception v7

    .line 761
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllRecommendApp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    if-eqz v6, :cond_1

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 763
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getStrategyTableIdofHomeServing(Landroid/content/Context;)J
    .locals 10
    .parameter "aContext"

    .prologue
    .line 713
    const/4 v6, 0x0

    .line 714
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 716
    .local v8, strategyTableId:J
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "strategy_table_id"

    aput-object v1, v2, v0

    .line 719
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/utils/Constant;->HOME_URI:Landroid/net/Uri;

    const-string v3, "isPreset=1"

    const/4 v4, 0x0

    const-string v5, "strategy_table_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 725
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    const-string v0, "strategy_table_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 734
    :cond_0
    if-eqz v6, :cond_1

    .line 735
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 738
    .end local v2           #projection:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v8

    .line 731
    :catch_0
    move-exception v7

    .line 732
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllRecommendApp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    if-eqz v6, :cond_1

    .line 735
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 734
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 735
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getUpdateType(ZZ)I
    .locals 1
    .parameter "insertHome"
    .parameter "insertApplist"

    .prologue
    .line 646
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 647
    const/4 v0, 0x3

    .line 653
    :goto_0
    return v0

    .line 648
    :cond_0
    if-eqz p1, :cond_1

    .line 649
    const/4 v0, 0x1

    goto :goto_0

    .line 650
    :cond_1
    if-eqz p2, :cond_2

    .line 651
    const/4 v0, 0x2

    goto :goto_0

    .line 653
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initContentValues(Lcom/baidu/launcher/business/item/RecommendAppItem;IJLjava/util/ArrayList;)V
    .locals 5
    .parameter "recommendAppItem"
    .parameter "aItemType"
    .parameter "aContainerId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            "IJ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 106
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "strategy_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 108
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_0

    .line 109
    const-string v2, "container_id"

    long-to-int v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 113
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v2, "item_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v2, "business_id"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "icon_url"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "apk_url"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getApk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "package_name"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getPackagename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "version_code"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getVersioncode()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    const-string v2, "version_name"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getVersionname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "description"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "rank"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getRank()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v2, "spany"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    const-string v2, "spanx"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    const-string v2, "locate"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getLocate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 130
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method private initFolderItem(Lcom/baidu/launcher/business/item/RecommendFolderItem;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "recommendFolderItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/business/item/RecommendFolderItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, -0x1

    .line 136
    sget-object v2, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 138
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "strategy_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 140
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .local v1, folderContentValues:Landroid/content/ContentValues;
    const-string v2, "item_type"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v2, "business_id"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendFolderItem;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendFolderItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "rank"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendFolderItem;->getRank()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v2, "locate"

    invoke-virtual {p1}, Lcom/baidu/launcher/business/item/RecommendFolderItem;->getLocate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "spany"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v2, "spanx"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v2, "container_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method private insertApp2BusinessTableInfo(Landroid/content/Context;[Lcom/baidu/launcher/business/item/RecommendAppItem;ILjava/util/ArrayList;)V
    .locals 7
    .parameter "aContext"
    .parameter "aAppItem"
    .parameter "aBusinessItemTypeApp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertApp2BusinessTableInfo(Landroid/content/Context;[Lcom/baidu/launcher/business/item/RecommendAppItem;ILjava/util/ArrayList;J)V

    .line 80
    return-void
.end method

.method private insertApp2BusinessTableInfo(Landroid/content/Context;[Lcom/baidu/launcher/business/item/RecommendAppItem;ILjava/util/ArrayList;J)V
    .locals 9
    .parameter "aContext"
    .parameter "aAppItem"
    .parameter "aBusinessItemTypeApp"
    .parameter
    .parameter "aContainerId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object v6, p2

    .local v6, arr$:[Lcom/baidu/launcher/business/item/RecommendAppItem;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v1, v6, v7

    .local v1, recommendAppItem:Lcom/baidu/launcher/business/item/RecommendAppItem;
    move-object v0, p0

    move v2, p3

    move-wide v3, p5

    move-object v5, p4

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/business/BusinessDAOUtil;->initContentValues(Lcom/baidu/launcher/business/item/RecommendAppItem;IJLjava/util/ArrayList;)V

    .line 96
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 99
    .end local v1           #recommendAppItem:Lcom/baidu/launcher/business/item/RecommendAppItem;
    :cond_0
    return-void
.end method

.method private insertFolder2BusinessTable(Landroid/content/Context;[Lcom/baidu/launcher/business/item/RecommendFolderItem;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "aContext"
    .parameter "aFolder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/baidu/launcher/business/item/RecommendFolderItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object v6, p2

    .local v6, arr$:[Lcom/baidu/launcher/business/item/RecommendFolderItem;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v9, v6, v7

    .line 69
    .local v9, recommendFolderItem:Lcom/baidu/launcher/business/item/RecommendFolderItem;
    invoke-direct {p0, v9, p3}, Lcom/baidu/launcher/business/BusinessDAOUtil;->initFolderItem(Lcom/baidu/launcher/business/item/RecommendFolderItem;Ljava/util/ArrayList;)V

    .line 70
    invoke-virtual {v9}, Lcom/baidu/launcher/business/item/RecommendFolderItem;->getAppList()[Lcom/baidu/launcher/business/item/RecommendAppItem;

    move-result-object v2

    .line 71
    .local v2, applist:[Lcom/baidu/launcher/business/item/RecommendAppItem;
    const/4 v3, 0x5

    const-string v4, "2"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertFolderApp2BusinessTableInfo(Landroid/content/Context;[Lcom/baidu/launcher/business/item/RecommendAppItem;ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 68
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 75
    .end local v2           #applist:[Lcom/baidu/launcher/business/item/RecommendAppItem;
    .end local v9           #recommendFolderItem:Lcom/baidu/launcher/business/item/RecommendFolderItem;
    :cond_0
    return-void
.end method

.method private insertFolderApp2BusinessTableInfo(Landroid/content/Context;[Lcom/baidu/launcher/business/item/RecommendAppItem;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "aContext"
    .parameter "aAppItem"
    .parameter "aBusinessItemTypeApp"
    .parameter "aLocate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 88
    .local v7, folderid:I
    move-object v6, p2

    .local v6, arr$:[Lcom/baidu/launcher/business/item/RecommendAppItem;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_0

    aget-object v1, v6, v8

    .line 89
    .local v1, recommendAppItem:Lcom/baidu/launcher/business/item/RecommendAppItem;
    invoke-virtual {v1, p4}, Lcom/baidu/launcher/business/item/RecommendAppItem;->setLocate(Ljava/lang/String;)V

    .line 90
    int-to-long v3, v7

    move-object v0, p0

    move v2, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/business/BusinessDAOUtil;->initContentValues(Lcom/baidu/launcher/business/item/RecommendAppItem;IJLjava/util/ArrayList;)V

    .line 88
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 92
    .end local v1           #recommendAppItem:Lcom/baidu/launcher/business/item/RecommendAppItem;
    :cond_0
    return-void
.end method

.method private updateAppListStrategyTabeId(Landroid/content/Context;JJJLjava/util/ArrayList;)V
    .locals 4
    .parameter "aContext"
    .parameter "aAppListId"
    .parameter "aBusinessRowID"
    .parameter "aStrategyTableId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJJ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 678
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 679
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 681
    .local v1, contentvalues:Landroid/content/ContentValues;
    const-string v2, "strategy_table_id"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 682
    const-string v2, "presetID"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 688
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 689
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    return-void
.end method

.method private updateHomeStrategyTabeId(Landroid/content/Context;JJJLjava/util/ArrayList;)V
    .locals 4
    .parameter "aContext"
    .parameter "aHomeId"
    .parameter "aBusinessRowID"
    .parameter "aStrategyTableId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJJ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 659
    .local p8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 661
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 662
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 664
    .local v1, contentvalues:Landroid/content/ContentValues;
    const-string v2, "strategy_table_id"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 665
    const-string v2, "presetID"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 670
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 671
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    return-void
.end method


# virtual methods
.method public insertAllapplistTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendFolderItem;J)J
    .locals 7
    .parameter "aContext"
    .parameter "recommendFolderItem"
    .parameter "businessRowID"

    .prologue
    const/4 v6, 0x1

    .line 288
    sget-object v3, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertAllapplistTable recommendFolderItem.toString() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendFolderItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 292
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendFolderItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v3, "container"

    const/16 v4, -0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v3, "itemType"

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v3, "isPreset"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v3, "presetID"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    const-string v3, "sort_index"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendFolderItem;->getRank()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v3, "visible"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v3, "strategy_table_id"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendFolderItem;->getStrategyId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 303
    sget-object v3, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 305
    .local v2, result:Landroid/net/Uri;
    if-nez v2, :cond_0

    const-wide/16 v3, -0x1

    :goto_0
    return-wide v3

    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    goto :goto_0
.end method

.method public insertAllapplistTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JILjava/util/ArrayList;)V
    .locals 9
    .parameter "aContext"
    .parameter "aAppItem"
    .parameter "businessRowID"
    .parameter "aItemType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            "JI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p6, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertAllapplistTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V

    .line 233
    return-void
.end method

.method public insertAllapplistTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V
    .locals 6
    .parameter "aContext"
    .parameter "aAppItem"
    .parameter "aFolderContainerId"
    .parameter "businessRowID"
    .parameter "aItemType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            "JJI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x1

    .line 238
    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 240
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v2, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertAllapplistTable aAppItem.toString() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v2, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aFolderContainerId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_0

    .line 245
    const-string v2, "container"

    long-to-int v3, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 253
    .end local p3
    :goto_0
    const-string v2, "itemType"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    const-string v2, "isPreset"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string v2, "presetID"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 257
    const-string v2, "sort_index"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getRank()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    const-string v2, "visible"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const-string v2, "strategy_table_id"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getStrategyId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    return-void

    .line 248
    .restart local p3
    :cond_0
    const-string v2, "container"

    const-wide/16 v3, -0x1

    cmp-long v3, p3, v3

    if-nez v3, :cond_1

    const-wide/16 p3, -0x3e8

    .end local p3
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public insertHomeTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JILjava/util/ArrayList;)V
    .locals 9
    .parameter "aContext"
    .parameter "aAppItem"
    .parameter "businessRowID"
    .parameter "aItemType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            "JI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p6, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertHomeTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V

    .line 159
    return-void
.end method

.method public insertHomeTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V
    .locals 7
    .parameter "aContext"
    .parameter "aAppItem"
    .parameter "aFolderContainerId"
    .parameter "businessRowID"
    .parameter "aItemType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            "JJI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v4, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 166
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getWidth()I

    move-result v2

    .line 167
    .local v2, spanX:I
    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getHeight()I

    move-result v3

    .line 168
    .local v3, spanY:I
    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 169
    :cond_0
    const/4 v2, 0x1

    .line 170
    const/4 v3, 0x1

    .line 172
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v4, "spanY"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v4, "spanX"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-ltz v4, :cond_2

    .line 177
    const-string v4, "container"

    long-to-int v5, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 185
    .end local p3
    :goto_0
    const-string v4, "itemType"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v4, "isPreset"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v4, "presetID"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    const-string v4, "screen"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v4, "cellX"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getRank()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v4, "strategy_table_id"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getStrategyId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 194
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void

    .line 180
    .restart local p3
    :cond_2
    const-string v4, "container"

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_3

    const-wide/16 p3, -0x64

    .end local p3
    :cond_3
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public insertRecommendApp2AppList(Landroid/content/Context;J)V
    .locals 8
    .parameter "aContext"
    .parameter "aStrategyTableId"

    .prologue
    .line 693
    const/4 v6, 0x0

    .line 695
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "business._id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "clickCount"

    aput-object v1, v2, v0

    .line 699
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strategy_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "rank"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 706
    if-eqz v6, :cond_0

    .line 707
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 710
    .end local v2           #projection:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v7

    .line 704
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllRecommendApp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    if-eqz v6, :cond_0

    .line 707
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 706
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 707
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public insertRecommendApp2HomeAndApplist(Landroid/content/Context;J)I
    .locals 45
    .parameter "aContext"
    .parameter "aStrategyTableId"

    .prologue
    .line 472
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->enter()V

    .line 473
    const/16 v35, 0x0

    .line 474
    .local v35, insertHome:Z
    const/16 v34, 0x0

    .line 475
    .local v34, insertApplist:Z
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v14, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v29, 0x0

    .line 479
    .local v29, cursor:Landroid/database/Cursor;
    const/16 v3, 0x9

    :try_start_0
    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "business._id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "item_type"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "locate"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "container_id"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "title"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "rank"

    aput-object v4, v5, v3

    const/4 v3, 0x6

    const-string v4, "spanx"

    aput-object v4, v5, v3

    const/4 v3, 0x7

    const-string v4, "spany"

    aput-object v4, v5, v3

    const/16 v3, 0x8

    const-string v4, "package_name"

    aput-object v4, v5, v3

    .line 486
    .local v5, projection:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "strategy_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "item_type,locate,container_id,rank"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 494
    if-eqz v29, :cond_2

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 495
    new-instance v36, Ljava/util/HashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/HashMap;-><init>()V

    .line 496
    .local v36, insertTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v44, Ljava/util/HashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashMap;-><init>()V

    .line 497
    .local v44, updateTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    .line 498
    .local v39, locateHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/business/BusinessDAOUtil;->getAllServingHomeFolderName(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v32

    .line 499
    .local v32, folderInHome:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/business/BusinessDAOUtil;->getAllServingAppListFolderName(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v31

    .line 501
    .local v31, folderInApplist:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    const-string v3, "package_name"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 504
    .local v41, packageName:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/Utilities;->isPackageInsalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 618
    :cond_1
    :goto_0
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 624
    .end local v31           #folderInApplist:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v32           #folderInHome:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v36           #insertTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v39           #locateHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v41           #packageName:Ljava/lang/String;
    .end local v44           #updateTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_2
    if-eqz v29, :cond_3

    .line 625
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 629
    .end local v5           #projection:[Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.baidu.home2"

    invoke-virtual {v3, v4, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v43

    .line 631
    .local v43, ret:[Landroid/content/ContentProviderResult;
    const/16 v33, 0x0

    .local v33, i:I
    :goto_2
    move-object/from16 v0, v43

    array-length v3, v0

    move/from16 v0, v33

    if-ge v0, v3, :cond_12

    .line 632
    sget-object v3, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content ret = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v43, v33

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 631
    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    .line 507
    .end local v33           #i:I
    .end local v43           #ret:[Landroid/content/ContentProviderResult;
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v31       #folderInApplist:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v32       #folderInHome:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v36       #insertTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v39       #locateHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v41       #packageName:Ljava/lang/String;
    .restart local v44       #updateTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_4
    :try_start_2
    const-string v3, "item_type"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 509
    .local v37, itemtype:I
    const-string v3, "locate"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 511
    .local v38, locate:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 512
    .local v10, businessRowID:J
    sget-object v3, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "businessRowID :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v3, "container_id"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 516
    .local v18, containerId:J
    new-instance v17, Lcom/baidu/launcher/business/item/RecommendAppItem;

    invoke-direct/range {v17 .. v17}, Lcom/baidu/launcher/business/item/RecommendAppItem;-><init>()V

    .line 517
    .local v17, appItem:Lcom/baidu/launcher/business/item/RecommendAppItem;
    const-string v3, "title"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 519
    .local v40, name:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->setName(Ljava/lang/String;)V

    .line 520
    const-string v3, "rank"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/business/item/RecommendAppItem;->setRank(I)V

    .line 522
    const-string v3, "spanx"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/business/item/RecommendAppItem;->setWidth(I)V

    .line 524
    const-string v3, "spany"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/business/item/RecommendAppItem;->setHeight(I)V

    .line 526
    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->setStrategyId(J)V

    .line 528
    const-wide/16 v8, -0x1

    .line 529
    .local v8, insertId:J
    const-string v3, "0"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 530
    const/4 v3, 0x1

    move/from16 v0, v37

    if-ne v3, v0, :cond_7

    .line 531
    sget-object v3, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folderInHome.containsKey name:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 533
    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v12, p2

    .line 534
    invoke-direct/range {v6 .. v14}, Lcom/baidu/launcher/business/BusinessDAOUtil;->updateHomeStrategyTabeId(Landroid/content/Context;JJJLjava/util/ArrayList;)V

    .line 605
    :cond_5
    :goto_3
    const/4 v3, 0x1

    move/from16 v0, v37

    if-ne v3, v0, :cond_1

    .line 606
    const-wide/16 v3, 0x0

    cmp-long v3, v8, v3

    if-gez v3, :cond_11

    .line 607
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-long v6, v4

    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v3, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "businessRowID : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "   ops.size() "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :goto_4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 621
    .end local v5           #projection:[Ljava/lang/String;
    .end local v8           #insertId:J
    .end local v10           #businessRowID:J
    .end local v17           #appItem:Lcom/baidu/launcher/business/item/RecommendAppItem;
    .end local v18           #containerId:J
    .end local v31           #folderInApplist:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v32           #folderInHome:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v36           #insertTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v37           #itemtype:I
    .end local v38           #locate:Ljava/lang/String;
    .end local v39           #locateHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v40           #name:Ljava/lang/String;
    .end local v41           #packageName:Ljava/lang/String;
    .end local v44           #updateTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_0
    move-exception v30

    .line 622
    .local v30, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v3, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllRecommendApp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 624
    if-eqz v29, :cond_3

    .line 625
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 536
    .end local v30           #e:Ljava/lang/Exception;
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v8       #insertId:J
    .restart local v10       #businessRowID:J
    .restart local v17       #appItem:Lcom/baidu/launcher/business/item/RecommendAppItem;
    .restart local v18       #containerId:J
    .restart local v31       #folderInApplist:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v32       #folderInHome:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v36       #insertTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v37       #itemtype:I
    .restart local v38       #locate:Ljava/lang/String;
    .restart local v39       #locateHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v40       #name:Ljava/lang/String;
    .restart local v41       #packageName:Ljava/lang/String;
    .restart local v44       #updateTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_6
    const/16 v22, 0x2

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-wide/from16 v20, v10

    move-object/from16 v23, v14

    :try_start_4
    invoke-virtual/range {v15 .. v23}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertHomeTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V

    .line 539
    const/16 v35, 0x1

    goto/16 :goto_3

    .line 541
    :cond_7
    const/4 v3, 0x3

    move/from16 v0, v37

    if-ne v3, v0, :cond_8

    .line 542
    const/16 v22, 0x5

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-wide/from16 v20, v10

    move-object/from16 v23, v14

    invoke-virtual/range {v15 .. v23}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertHomeTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V

    .line 545
    const/16 v35, 0x1

    goto/16 :goto_3

    .line 547
    :cond_8
    const/16 v22, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-wide/from16 v20, v10

    move-object/from16 v23, v14

    invoke-virtual/range {v15 .. v23}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertHomeTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V

    .line 550
    const/16 v35, 0x1

    goto/16 :goto_3

    .line 552
    :cond_9
    const-string v3, "1"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 553
    const/4 v3, 0x1

    move/from16 v0, v37

    if-ne v3, v0, :cond_c

    .line 554
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 555
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v12, p2

    .line 556
    invoke-direct/range {v6 .. v14}, Lcom/baidu/launcher/business/BusinessDAOUtil;->updateAppListStrategyTabeId(Landroid/content/Context;JJJLjava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 624
    .end local v5           #projection:[Ljava/lang/String;
    .end local v8           #insertId:J
    .end local v10           #businessRowID:J
    .end local v17           #appItem:Lcom/baidu/launcher/business/item/RecommendAppItem;
    .end local v18           #containerId:J
    .end local v31           #folderInApplist:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v32           #folderInHome:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v36           #insertTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v37           #itemtype:I
    .end local v38           #locate:Ljava/lang/String;
    .end local v39           #locateHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v40           #name:Ljava/lang/String;
    .end local v41           #packageName:Ljava/lang/String;
    .end local v44           #updateTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v3

    if-eqz v29, :cond_a

    .line 625
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 559
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v8       #insertId:J
    .restart local v10       #businessRowID:J
    .restart local v17       #appItem:Lcom/baidu/launcher/business/item/RecommendAppItem;
    .restart local v18       #containerId:J
    .restart local v31       #folderInApplist:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v32       #folderInHome:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v36       #insertTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v37       #itemtype:I
    .restart local v38       #locate:Ljava/lang/String;
    .restart local v39       #locateHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v40       #name:Ljava/lang/String;
    .restart local v41       #packageName:Ljava/lang/String;
    .restart local v44       #updateTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_b
    const/16 v22, 0xb

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-wide/from16 v20, v10

    move-object/from16 v23, v14

    :try_start_5
    invoke-virtual/range {v15 .. v23}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertAllapplistTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V

    .line 563
    const/16 v34, 0x1

    goto/16 :goto_3

    .line 566
    :cond_c
    const/16 v22, 0xa

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-wide/from16 v20, v10

    move-object/from16 v23, v14

    invoke-virtual/range {v15 .. v23}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertAllapplistTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V

    .line 570
    const/16 v34, 0x1

    goto/16 :goto_3

    .line 572
    :cond_d
    const-string v3, "2"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 573
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .line 574
    .local v42, parentLocate:Ljava/lang/String;
    const-string v3, "0"

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 575
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 576
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const/16 v27, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v17

    move-wide/from16 v25, v10

    move-object/from16 v28, v14

    invoke-virtual/range {v20 .. v28}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertHomeTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V

    .line 580
    const/16 v35, 0x1

    goto/16 :goto_3

    .line 582
    :cond_e
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const/16 v27, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v17

    move-wide/from16 v25, v10

    move-object/from16 v28, v14

    invoke-virtual/range {v20 .. v28}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertUpdateHomeTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V

    .line 586
    const/16 v35, 0x1

    goto/16 :goto_3

    .line 588
    :cond_f
    const-string v3, "1"

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 589
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 590
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const/16 v27, 0xa

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v17

    move-wide/from16 v25, v10

    move-object/from16 v28, v14

    invoke-virtual/range {v20 .. v28}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertAllapplistTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V

    .line 594
    const/16 v34, 0x1

    goto/16 :goto_3

    .line 596
    :cond_10
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    const/16 v27, 0x0

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, v17

    move-wide/from16 v25, v10

    move-object/from16 v28, v14

    invoke-virtual/range {v20 .. v28}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertUpdateAllapplistTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V

    .line 600
    const/16 v35, 0x1

    goto/16 :goto_3

    .line 611
    .end local v42           #parentLocate:Ljava/lang/String;
    :cond_11
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v3, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "businessRowID : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  insertId"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    .line 634
    .end local v5           #projection:[Ljava/lang/String;
    .end local v8           #insertId:J
    .end local v10           #businessRowID:J
    .end local v17           #appItem:Lcom/baidu/launcher/business/item/RecommendAppItem;
    .end local v18           #containerId:J
    .end local v31           #folderInApplist:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v32           #folderInHome:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v36           #insertTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v37           #itemtype:I
    .end local v38           #locate:Ljava/lang/String;
    .end local v39           #locateHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v40           #name:Ljava/lang/String;
    .end local v41           #packageName:Ljava/lang/String;
    .end local v44           #updateTableIdHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :catch_1
    move-exception v30

    .line 635
    .local v30, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {v30 .. v30}, Landroid/os/RemoteException;->printStackTrace()V

    .line 641
    .end local v30           #e:Landroid/os/RemoteException;
    :cond_12
    :goto_5
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->leave()V

    .line 642
    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/business/BusinessDAOUtil;->getUpdateType(ZZ)I

    move-result v3

    return v3

    .line 637
    :catch_2
    move-exception v30

    .line 638
    .local v30, e:Landroid/content/OperationApplicationException;
    sget-object v3, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    invoke-virtual/range {v30 .. v30}, Landroid/content/OperationApplicationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {v30 .. v30}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_5
.end method

.method public insertRecommendAppInfo(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendResponceInfo;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "aContext"
    .parameter "aInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/launcher/business/item/RecommendResponceInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->getStore()[Lcom/baidu/launcher/business/item/RecommendAppItem;

    move-result-object v1

    .line 42
    .local v1, appStoreItem:[Lcom/baidu/launcher/business/item/RecommendAppItem;
    if-eqz v1, :cond_0

    .line 43
    const/4 v4, 0x4

    invoke-direct {p0, p1, v1, v4, p3}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertApp2BusinessTableInfo(Landroid/content/Context;[Lcom/baidu/launcher/business/item/RecommendAppItem;ILjava/util/ArrayList;)V

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->getApp()[Lcom/baidu/launcher/business/item/RecommendAppItem;

    move-result-object v0

    .line 48
    .local v0, appItem:[Lcom/baidu/launcher/business/item/RecommendAppItem;
    if-eqz v0, :cond_1

    .line 49
    const/4 v4, 0x2

    invoke-direct {p0, p1, v0, v4, p3}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertApp2BusinessTableInfo(Landroid/content/Context;[Lcom/baidu/launcher/business/item/RecommendAppItem;ILjava/util/ArrayList;)V

    .line 53
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->getWidget()[Lcom/baidu/launcher/business/item/RecommendAppItem;

    move-result-object v3

    .line 54
    .local v3, widgetItem:[Lcom/baidu/launcher/business/item/RecommendAppItem;
    if-eqz v3, :cond_2

    .line 55
    const/4 v4, 0x3

    invoke-direct {p0, p1, v3, v4, p3}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertApp2BusinessTableInfo(Landroid/content/Context;[Lcom/baidu/launcher/business/item/RecommendAppItem;ILjava/util/ArrayList;)V

    .line 59
    :cond_2
    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->getFolder()[Lcom/baidu/launcher/business/item/RecommendFolderItem;

    move-result-object v2

    .line 60
    .local v2, folderItem:[Lcom/baidu/launcher/business/item/RecommendFolderItem;
    if-eqz v2, :cond_3

    .line 61
    invoke-direct {p0, p1, v2, p3}, Lcom/baidu/launcher/business/BusinessDAOUtil;->insertFolder2BusinessTable(Landroid/content/Context;[Lcom/baidu/launcher/business/item/RecommendFolderItem;Ljava/util/ArrayList;)V

    .line 63
    :cond_3
    return-void
.end method

.method public insertStrategyTable(Landroid/content/Context;JJJ)J
    .locals 5
    .parameter "aContext"
    .parameter "aStrategyId"
    .parameter "aStart"
    .parameter "aEnd"

    .prologue
    .line 310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 311
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "strategy_key"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 312
    const-string v2, "start"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    const-string v2, "end"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/utils/Constant;->STRATEGY_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 316
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertStrategyTable uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    if-eqz v1, :cond_0

    .line 318
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 320
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public insertUpdateAllapplistTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V
    .locals 6
    .parameter "aContext"
    .parameter "aAppItem"
    .parameter "aFolderContainerId"
    .parameter "businessRowID"
    .parameter "aItemType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            "JJI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x1

    .line 267
    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$AllAppList;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 269
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 270
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v2, "container"

    const-wide/16 v3, -0x1

    cmp-long v3, p3, v3

    if-nez v3, :cond_0

    const-wide/16 p3, -0x3e8

    .end local p3
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 275
    const-string v2, "itemType"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v2, "isPreset"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string v2, "presetID"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 279
    const-string v2, "sort_index"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getRank()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v2, "visible"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v2, "strategy_table_id"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getStrategyId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 283
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public insertUpdateHomeTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;JJILjava/util/ArrayList;)V
    .locals 7
    .parameter "aContext"
    .parameter "aAppItem"
    .parameter "aFolderContainerId"
    .parameter "businessRowID"
    .parameter "aItemType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            "JJI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v4, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 202
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getWidth()I

    move-result v2

    .line 203
    .local v2, spanX:I
    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getHeight()I

    move-result v3

    .line 204
    .local v3, spanY:I
    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 205
    :cond_0
    const/4 v2, 0x1

    .line 206
    const/4 v3, 0x1

    .line 209
    :cond_1
    sget-object v4, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertHomeTable aAppItem.toString() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v1, contentValues:Landroid/content/ContentValues;
    const-string v4, "title"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v4, "spanY"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v4, "spanX"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v4, "container"

    const-wide/16 v5, -0x1

    cmp-long v5, p3, v5

    if-nez v5, :cond_2

    const-wide/16 p3, -0x64

    .end local p3
    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    const-string v4, "itemType"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v4, "isPreset"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string v4, "presetID"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    const-string v4, "screen"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string v4, "cellX"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getRank()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v4, "strategy_table_id"

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getStrategyId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 227
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public isExitInBusinessTable(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendAppItem;)J
    .locals 10
    .parameter "aContext"
    .parameter "recommendAppItem"

    .prologue
    const/4 v1, 0x0

    .line 445
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 448
    .local v2, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 449
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 451
    .local v6, businessTadbleId:J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/utils/Constant;->BUSINESS_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "business_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "strategy_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getStrategyId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 458
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 464
    :cond_0
    if-eqz v8, :cond_1

    .line 465
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_1
    :goto_0
    return-wide v6

    .line 461
    :catch_0
    move-exception v9

    .line 462
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/baidu/launcher/business/BusinessDAOUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    if-eqz v8, :cond_1

    .line 465
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 464
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 465
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
