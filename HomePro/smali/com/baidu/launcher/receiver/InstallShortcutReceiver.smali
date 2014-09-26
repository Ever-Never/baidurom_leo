.class public Lcom/baidu/launcher/receiver/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InstallShortcutReceiver"

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private final mCoordinates:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->mCoordinates:[I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/receiver/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 24
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 141
    sget v2, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    sget v20, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    .line 142
    .local v20, xCount:I
    :goto_0
    sget v2, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    sget v22, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    .line 144
    .local v22, yCount:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v22

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[Z

    .line 146
    .local v14, occupied:[[Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "spanY"

    aput-object v6, v4, v5

    const-string v5, "screen=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 157
    .local v8, c:Landroid/database/Cursor;
    const-string v2, "cellX"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 158
    .local v10, cellXIndex:I
    const-string v2, "cellY"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 159
    .local v12, cellYIndex:I
    const-string v2, "spanX"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 160
    .local v16, spanXIndex:I
    const-string v2, "spanY"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 163
    .local v18, spanYIndex:I
    :cond_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 164
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 165
    .local v9, cellX:I
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 166
    .local v11, cellY:I
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 167
    .local v15, spanX:I
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 169
    .local v17, spanY:I
    move/from16 v19, v9

    .local v19, x:I
    :goto_2
    add-int v2, v9, v15

    move/from16 v0, v19

    if-ge v0, v2, :cond_0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 170
    move/from16 v21, v11

    .local v21, y:I
    :goto_3
    add-int v2, v11, v17

    move/from16 v0, v21

    if-ge v0, v2, :cond_3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 171
    aget-object v2, v14, v19

    const/4 v3, 0x1

    aput-boolean v3, v2, v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 141
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #cellX:I
    .end local v10           #cellXIndex:I
    .end local v11           #cellY:I
    .end local v12           #cellYIndex:I
    .end local v14           #occupied:[[Z
    .end local v15           #spanX:I
    .end local v16           #spanXIndex:I
    .end local v17           #spanY:I
    .end local v18           #spanYIndex:I
    .end local v19           #x:I
    .end local v20           #xCount:I
    .end local v21           #y:I
    .end local v22           #yCount:I
    :cond_1
    sget v20, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    goto/16 :goto_0

    .line 142
    .restart local v20       #xCount:I
    :cond_2
    sget v22, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    goto/16 :goto_1

    .line 169
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #cellX:I
    .restart local v10       #cellXIndex:I
    .restart local v11       #cellY:I
    .restart local v12       #cellYIndex:I
    .restart local v14       #occupied:[[Z
    .restart local v15       #spanX:I
    .restart local v16       #spanXIndex:I
    .restart local v17       #spanY:I
    .restart local v18       #spanYIndex:I
    .restart local v19       #x:I
    .restart local v21       #y:I
    .restart local v22       #yCount:I
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 178
    .end local v9           #cellX:I
    .end local v11           #cellY:I
    .end local v15           #spanX:I
    .end local v17           #spanY:I
    .end local v19           #x:I
    .end local v21           #y:I
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 181
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v2, p1

    move/from16 v5, v20

    move/from16 v6, v22

    move-object v7, v14

    invoke-static/range {v2 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v2

    :goto_4
    return v2

    .line 175
    :catch_0
    move-exception v13

    .line 176
    .local v13, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 178
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 16
    .parameter "context"
    .parameter "data"
    .parameter "screen"

    .prologue
    .line 80
    const-string v3, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, name:Ljava/lang/String;
    const v3, 0x7f0c02a9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 82
    .local v13, replace_market_key:Ljava/lang/String;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 94
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 95
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, packageName:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, className:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/data/IconCache;->getIconMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/baidu/launcher/data/IconCache;->getIconMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    :cond_0
    const/4 v3, 0x1

    .line 135
    .end local v8           #className:Ljava/lang/String;
    .end local v12           #packageName:Ljava/lang/String;
    :goto_0
    return v3

    .line 103
    :cond_1
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 104
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    invoke-virtual {v3, v11, v9}, Lcom/baidu/launcher/data/HomeDataManager;->shortcutExists(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v14

    .line 107
    .local v14, shortcutExists:Z
    if-eqz v14, :cond_3

    .line 108
    sget-object v4, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 109
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->updateShortcut(Landroid/content/Context;Landroid/content/Intent;)V

    .line 110
    monitor-exit v4

    .line 111
    const/4 v3, 0x1

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 114
    :cond_3
    sget-object v15, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 115
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->mCoordinates:[I

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v3, v1}, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v2

    .line 117
    .local v2, homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v4, 0x1

    aget v6, v3, v4

    const/4 v7, 0x1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/launcher/data/HomeDataManager;->addShortcut(Landroid/content/Intent;IIIZ)Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 122
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 123
    .local v10, msg:Landroid/os/Message;
    const/16 v3, 0x64

    iput v3, v10, Landroid/os/Message;->what:I

    .line 124
    iput-object v11, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/app/LauncherApplication;

    iget-object v3, v3, Lcom/baidu/launcher/app/LauncherApplication;->handler:Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;

    invoke-virtual {v3, v10}, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->sendMessage(Landroid/os/Message;)Z

    .line 127
    const-string v3, "InstallShortcutReceiver"

    const-string v4, "install"

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v3, 0x1

    monitor-exit v15

    goto :goto_0

    .line 132
    .end local v2           #homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;
    .end local v10           #msg:Landroid/os/Message;
    :catchall_1
    move-exception v3

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :cond_4
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateShortcut(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "data"

    .prologue
    .line 186
    const-string v3, "sourceApp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 187
    .local v10, fromApp:Ljava/lang/String;
    if-eqz v10, :cond_5

    const-string v3, "com.baidu.musicplayer"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 188
    const-string v3, "newName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 189
    .local v18, newName:Ljava/lang/String;
    const-string v3, "newIcon"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    .line 190
    .local v16, newIcon:Landroid/os/Parcelable;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 192
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    .line 195
    .local v14, intent:Landroid/content/Intent;
    if-eqz v14, :cond_5

    if-nez v18, :cond_0

    if-eqz v16, :cond_5

    .line 196
    :cond_0
    sget-object v3, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "intent"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 201
    .local v8, c:Landroid/database/Cursor;
    const-string v3, "intent"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 203
    .local v15, intentIndex:I
    const-string v3, "_id"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 206
    .local v13, idIndex:I
    const/4 v9, 0x0

    .line 209
    .local v9, changed:Z
    if-eqz v8, :cond_4

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 211
    :cond_1
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 214
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 215
    .local v11, id:J
    const/4 v3, 0x0

    invoke-static {v11, v12, v3}, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v19

    .line 217
    .local v19, uri:Landroid/net/Uri;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v20, values:Landroid/content/ContentValues;
    if-eqz v18, :cond_2

    .line 219
    const-string v3, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v3, "newIntent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    .line 224
    .local v17, newIntent:Landroid/content/Intent;
    const-string v3, "intent"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .end local v17           #newIntent:Landroid/content/Intent;
    :cond_2
    if-eqz v16, :cond_3

    .line 229
    check-cast v16, Landroid/graphics/Bitmap;

    .end local v16           #newIcon:Landroid/os/Parcelable;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/baidu/launcher/data/item/BaseItemInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 233
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    const/4 v9, 0x1

    .line 240
    .end local v11           #id:J
    .end local v19           #uri:Landroid/net/Uri;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_4
    :goto_0
    if-eqz v8, :cond_5

    .line 241
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 242
    const/4 v8, 0x0

    .line 253
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #changed:Z
    .end local v13           #idIndex:I
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #intentIndex:I
    .end local v18           #newName:Ljava/lang/String;
    :cond_5
    return-void

    .line 237
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #changed:Z
    .restart local v13       #idIndex:I
    .restart local v14       #intent:Landroid/content/Intent;
    .restart local v15       #intentIndex:I
    .restart local v16       #newIcon:Landroid/os/Parcelable;
    .restart local v18       #newName:Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 240
    .end local v16           #newIcon:Landroid/os/Parcelable;
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_7

    .line 241
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 242
    const/4 v8, 0x0

    :cond_7
    throw v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "data"

    .prologue
    .line 34
    const-string v1, "InstallShortcutReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;-><init>(Lcom/baidu/launcher/receiver/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    .local v0, task:Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;
    sget-object v1, Lcom/baidu/launcher/app/LauncherApplication;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
