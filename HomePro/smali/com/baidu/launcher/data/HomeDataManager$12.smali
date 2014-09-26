.class Lcom/baidu/launcher/data/HomeDataManager$12;
.super Ljava/lang/Object;
.source "HomeDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/data/HomeDataManager;->onBusinessChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/data/HomeDataManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/HomeDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 40

    .prologue
    .line 1323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->getExceptFolders()Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/baidu/launcher/data/HomeDataManager;->access$300(Lcom/baidu/launcher/data/HomeDataManager;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->notifyDataChange(Ljava/util/ArrayList;I)V
    invoke-static {v4, v5, v6}, Lcom/baidu/launcher/data/HomeDataManager;->access$400(Lcom/baidu/launcher/data/HomeDataManager;Ljava/util/ArrayList;I)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    #getter for: Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/launcher/data/HomeDataManager;->access$000(Lcom/baidu/launcher/data/HomeDataManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "isPreset=1"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1327
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_f

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1329
    :try_start_0
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 1330
    .local v19, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v27, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1332
    .local v23, idIndex:I
    const-string v4, "title"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 1334
    .local v36, titleIndex:I
    const-string v4, "container"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1336
    .local v15, containerIndex:I
    const-string v4, "itemType"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1338
    .local v26, itemTypeIndex:I
    const-string v4, "screen"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 1340
    .local v31, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1342
    .local v13, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1344
    .local v14, cellYIndex:I
    const-string v4, "spanX"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 1346
    .local v33, spanXIndex:I
    const-string v4, "spanY"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 1348
    .local v35, spanYIndex:I
    const-string v4, "presetID"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 1350
    .local v30, presetIDIndex:I
    const-string v4, "appWidgetId"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1353
    .local v10, appWidgetIdIndex:I
    const/16 v24, 0x0

    .line 1356
    .local v24, item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_0
    move/from16 v0, v26

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 1357
    .local v25, itemType:I
    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 1358
    .local v21, id:J
    move/from16 v0, v30

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1359
    .local v28, presetID:J
    move/from16 v0, v33

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 1360
    .local v32, spanX:I
    move/from16 v0, v35

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1361
    .local v34, spanY:I
    const/4 v4, 0x2

    move/from16 v0, v25

    if-ne v0, v4, :cond_5

    .line 1362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-static {v4, v0, v1, v2}, Lcom/baidu/launcher/data/HomeDataManager;->access$500(Lcom/baidu/launcher/data/HomeDataManager;Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/HomeFolderInfo;

    move-result-object v24

    .line 1363
    const-string v4, "HomeDataManager"

    invoke-static {v4}, Lcom/baidu/launcher/utils/LogEx;->printTrace(Ljava/lang/String;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    move-object/from16 v0, v24

    check-cast v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    move-object v4, v0

    move-wide/from16 v0, v21

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->loadExtraItemsForPresetFolder(Lcom/baidu/launcher/data/item/HomeFolderInfo;J)V
    invoke-static {v5, v4, v0, v1}, Lcom/baidu/launcher/data/HomeDataManager;->access$600(Lcom/baidu/launcher/data/HomeDataManager;Lcom/baidu/launcher/data/item/HomeFolderInfo;J)V

    .line 1381
    :cond_1
    :goto_0
    if-nez v24, :cond_9

    .line 1382
    const-string v4, "HomeDataManager"

    const-string v5, "item == null"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1429
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 1430
    .local v37, updateFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 1431
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 1432
    .local v17, folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1434
    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1438
    .end local v10           #appWidgetIdIndex:I
    .end local v13           #cellXIndex:I
    .end local v14           #cellYIndex:I
    .end local v15           #containerIndex:I
    .end local v17           #folder:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v19           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #id:J
    .end local v23           #idIndex:I
    .end local v24           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v25           #itemType:I
    .end local v26           #itemTypeIndex:I
    .end local v27           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    .end local v28           #presetID:J
    .end local v30           #presetIDIndex:I
    .end local v31           #screenIndex:I
    .end local v32           #spanX:I
    .end local v33           #spanXIndex:I
    .end local v34           #spanY:I
    .end local v35           #spanYIndex:I
    .end local v36           #titleIndex:I
    .end local v37           #updateFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    :catch_0
    move-exception v4

    .line 1446
    :cond_3
    :goto_3
    if-eqz v12, :cond_4

    .line 1447
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1449
    :cond_4
    return-void

    .line 1365
    .restart local v10       #appWidgetIdIndex:I
    .restart local v13       #cellXIndex:I
    .restart local v14       #cellYIndex:I
    .restart local v15       #containerIndex:I
    .restart local v19       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    .restart local v21       #id:J
    .restart local v23       #idIndex:I
    .restart local v24       #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .restart local v25       #itemType:I
    .restart local v26       #itemTypeIndex:I
    .restart local v27       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    .restart local v28       #presetID:J
    .restart local v30       #presetIDIndex:I
    .restart local v31       #screenIndex:I
    .restart local v32       #spanX:I
    .restart local v33       #spanXIndex:I
    .restart local v34       #spanY:I
    .restart local v35       #spanYIndex:I
    .restart local v36       #titleIndex:I
    :cond_5
    if-nez v25, :cond_6

    .line 1366
    :try_start_1
    new-instance v24, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .end local v24           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    invoke-direct/range {v24 .. v24}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>()V

    .restart local v24       #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    goto :goto_0

    .line 1367
    :cond_6
    const/4 v4, 0x5

    move/from16 v0, v25

    if-ne v0, v4, :cond_1

    .line 1368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    #getter for: Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/launcher/data/HomeDataManager;->access$000(Lcom/baidu/launcher/data/HomeDataManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v11

    .line 1370
    .local v11, appsDataManager:Lcom/baidu/launcher/data/AppsDataManager;
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 1371
    .local v39, widgetID:I
    const/16 v38, 0x0

    .line 1372
    .local v38, widget:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    if-lez v39, :cond_7

    .line 1373
    move/from16 v0, v39

    invoke-virtual {v11, v0}, Lcom/baidu/launcher/data/AppsDataManager;->getWidgetByID(I)Lcom/baidu/launcher/data/item/ListWidgetInfo;

    move-result-object v38

    .line 1375
    :cond_7
    if-nez v38, :cond_8

    .line 1376
    move-wide/from16 v0, v28

    move/from16 v2, v32

    move/from16 v3, v34

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/baidu/launcher/data/AppsDataManager;->newWidget(JII)Lcom/baidu/launcher/data/item/ListWidgetInfo;

    move-result-object v38

    .line 1378
    :cond_8
    new-instance v24, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    .end local v24           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    move-object/from16 v0, v38

    iget v4, v0, Lcom/baidu/launcher/data/item/ListWidgetInfo;->widgetID:I

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;-><init>(I)V

    .restart local v24       #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    goto/16 :goto_0

    .line 1386
    .end local v11           #appsDataManager:Lcom/baidu/launcher/data/AppsDataManager;
    .end local v38           #widget:Lcom/baidu/launcher/data/item/ListWidgetInfo;
    .end local v39           #widgetID:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    move-object/from16 v0, v24

    move-wide/from16 v1, v28

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->getInfoFromBusiness(Lcom/baidu/launcher/data/item/HomeItemInfo;J)V
    invoke-static {v4, v0, v1, v2}, Lcom/baidu/launcher/data/HomeDataManager;->access$700(Lcom/baidu/launcher/data/HomeDataManager;Lcom/baidu/launcher/data/item/HomeItemInfo;J)V

    .line 1388
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_a

    const/4 v4, 0x2

    move/from16 v0, v25

    if-eq v0, v4, :cond_a

    .line 1390
    const-string v4, "HomeDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item.iconBitmap == null "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v36

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1394
    :cond_a
    move-wide/from16 v0, v21

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    .line 1395
    move/from16 v0, v36

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->title:Ljava/lang/CharSequence;

    .line 1396
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    .line 1397
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->itemType:I

    .line 1398
    move/from16 v0, v31

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    .line 1399
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    .line 1400
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    .line 1401
    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 1402
    move/from16 v0, v34

    move-object/from16 v1, v24

    iput v0, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    .line 1403
    const/4 v4, 0x1

    move-object/from16 v0, v24

    iput-boolean v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->isPreset:Z

    .line 1404
    move-wide/from16 v0, v28

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/baidu/launcher/data/item/HomeItemInfo;->businessTableID:J

    .line 1405
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->status:I

    .line 1406
    const/4 v4, 0x5

    move/from16 v0, v25

    if-ne v0, v4, :cond_b

    .line 1407
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->dependPackage:Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1409
    .local v16, dependent:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    #getter for: Lcom/baidu/launcher/data/HomeDataManager;->mAppConext:Landroid/content/Context;
    invoke-static {v4}, Lcom/baidu/launcher/data/HomeDataManager;->access$000(Lcom/baidu/launcher/data/HomeDataManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->replacedIntent:Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1413
    :goto_4
    :try_start_3
    move-object/from16 v0, v24

    check-cast v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    move-object v4, v0

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->replacedIntent:Landroid/content/Intent;

    if-nez v5, :cond_c

    const/4 v5, 0x1

    :goto_5
    iput-boolean v5, v4, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z

    .line 1416
    .end local v16           #dependent:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    move-object/from16 v0, v24

    iget-wide v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    const-wide/16 v6, -0xc8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d

    .line 1418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    move-object/from16 v0, v24

    iget-wide v5, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    move-object/from16 v0, v19

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-static {v4, v0, v5, v6}, Lcom/baidu/launcher/data/HomeDataManager;->access$500(Lcom/baidu/launcher/data/HomeDataManager;Ljava/util/HashMap;J)Lcom/baidu/launcher/data/item/HomeFolderInfo;

    move-result-object v18

    .line 1420
    .local v18, folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    const-string v4, "HomeDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add folder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    goto/16 :goto_1

    .line 1413
    .end local v18           #folderInfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .restart local v16       #dependent:Ljava/lang/String;
    :cond_c
    const/4 v5, 0x0

    goto :goto_5

    .line 1423
    .end local v16           #dependent:Ljava/lang/String;
    :cond_d
    const-string v4, "HomeDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new preset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1436
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v37       #updateFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    const/4 v5, 0x2

    move-object/from16 v0, v37

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->notifyDataChange(Ljava/util/ArrayList;I)V
    invoke-static {v4, v0, v5}, Lcom/baidu/launcher/data/HomeDataManager;->access$400(Lcom/baidu/launcher/data/HomeDataManager;Ljava/util/ArrayList;I)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/data/HomeDataManager$12;->this$0:Lcom/baidu/launcher/data/HomeDataManager;

    const/4 v5, 0x0

    move-object/from16 v0, v27

    #calls: Lcom/baidu/launcher/data/HomeDataManager;->notifyDataChange(Ljava/util/ArrayList;I)V
    invoke-static {v4, v0, v5}, Lcom/baidu/launcher/data/HomeDataManager;->access$400(Lcom/baidu/launcher/data/HomeDataManager;Ljava/util/ArrayList;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 1441
    .end local v10           #appWidgetIdIndex:I
    .end local v13           #cellXIndex:I
    .end local v14           #cellYIndex:I
    .end local v15           #containerIndex:I
    .end local v19           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #id:J
    .end local v23           #idIndex:I
    .end local v24           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v25           #itemType:I
    .end local v26           #itemTypeIndex:I
    .end local v27           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    .end local v28           #presetID:J
    .end local v30           #presetIDIndex:I
    .end local v31           #screenIndex:I
    .end local v32           #spanX:I
    .end local v33           #spanXIndex:I
    .end local v34           #spanY:I
    .end local v35           #spanYIndex:I
    .end local v36           #titleIndex:I
    .end local v37           #updateFolders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    :cond_f
    const-string v4, "HomeDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor is NULL or can NOT move to first"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    if-eqz v12, :cond_3

    .line 1443
    const-string v4, "HomeDataManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "on business change cursor count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1411
    .restart local v10       #appWidgetIdIndex:I
    .restart local v13       #cellXIndex:I
    .restart local v14       #cellYIndex:I
    .restart local v15       #containerIndex:I
    .restart local v16       #dependent:Ljava/lang/String;
    .restart local v19       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/data/item/HomeFolderInfo;>;"
    .restart local v21       #id:J
    .restart local v23       #idIndex:I
    .restart local v24       #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .restart local v25       #itemType:I
    .restart local v26       #itemTypeIndex:I
    .restart local v27       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    .restart local v28       #presetID:J
    .restart local v30       #presetIDIndex:I
    .restart local v31       #screenIndex:I
    .restart local v32       #spanX:I
    .restart local v33       #spanXIndex:I
    .restart local v34       #spanY:I
    .restart local v35       #spanYIndex:I
    .restart local v36       #titleIndex:I
    :catch_1
    move-exception v4

    goto/16 :goto_4
.end method
