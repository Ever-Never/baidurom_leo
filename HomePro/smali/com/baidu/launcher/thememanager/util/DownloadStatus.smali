.class public Lcom/baidu/launcher/thememanager/util/DownloadStatus;
.super Ljava/lang/Object;
.source "DownloadStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    }
.end annotation


# static fields
.field private static final BUTTON_STATUS_EXIST:I = 0x4

.field private static final BUTTON_STATUS_NONE:I = 0x0

.field private static final BUTTON_STATUS_PENDING:I = 0x1

.field private static final BUTTON_STATUS_RUNNING:I = 0x2

.field private static final BUTTON_STATUS_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DownloadStatus"

.field static mInstance:Lcom/baidu/launcher/thememanager/util/DownloadStatus;

.field static final mInstanceSync:Ljava/lang/Object;

.field static final mapmemsync:Ljava/lang/Object;

.field static final mapsync:Ljava/lang/Object;

.field static final setsync:Ljava/lang/Object;


# instance fields
.field private map_mem_status:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;",
            ">;"
        }
    .end annotation
.end field

.field private map_status:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;",
            ">;"
        }
    .end annotation
.end field

.field private set_local:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mInstanceSync:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mapsync:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->setsync:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mapmemsync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->map_status:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->map_mem_status:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->set_local:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;
    .locals 2

    .prologue
    .line 38
    sget-object v1, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mInstance:Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mInstance:Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    monitor-exit v1

    .line 46
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mInstance:Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sget-object v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mInstance:Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getThemeStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    .locals 6
    .parameter "url"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 176
    new-instance v3, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;-><init>(Lcom/baidu/launcher/thememanager/util/DownloadStatus;)V

    .line 177
    .local v3, statusItem:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    iput v4, v3, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    .line 178
    iput v4, v3, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->percent:I

    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, r:Z
    sget-object v5, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->setsync:Ljava/lang/Object;

    monitor-enter v5

    .line 183
    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->set_local:Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 184
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    if-eqz v1, :cond_1

    .line 187
    const/4 v4, 0x4

    iput v4, v3, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    .line 216
    :cond_0
    :goto_0
    return-object v3

    .line 184
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 189
    :cond_1
    const/4 v2, 0x0

    .line 190
    .local v2, s:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    sget-object v5, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mapmemsync:Ljava/lang/Object;

    monitor-enter v5

    .line 191
    :try_start_2
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->map_mem_status:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;

    move-object v2, v0

    .line 192
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    if-nez v2, :cond_2

    .line 195
    sget-object v5, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mapsync:Ljava/lang/Object;

    monitor-enter v5

    .line 196
    :try_start_3
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->map_status:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;

    move-object v2, v0

    .line 197
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 200
    :cond_2
    if-eqz v2, :cond_0

    .line 201
    iget v4, v2, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 203
    :sswitch_0
    const/4 v4, 0x3

    iput v4, v3, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    goto :goto_0

    .line 192
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 197
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    .line 206
    :sswitch_1
    const/4 v4, 0x2

    iput v4, v3, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    .line 207
    iget v4, v2, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->percent:I

    iput v4, v3, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->percent:I

    goto :goto_0

    .line 210
    :sswitch_2
    const/4 v4, 0x1

    iput v4, v3, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    goto :goto_0

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x65 -> :sswitch_2
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method public removeDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "url"

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    sget-object v1, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->setsync:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->set_local:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 252
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_0
    if-eqz p2, :cond_1

    .line 256
    sget-object v1, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mapmemsync:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->map_mem_status:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    sget-object v1, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mapsync:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_2
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->map_status:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 263
    :cond_1
    return-void

    .line 252
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 258
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 261
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public resetDownloadState(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 75
    sget-object v14, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mapsync:Ljava/lang/Object;

    monitor-enter v14

    .line 78
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->map_status:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->clear()V

    .line 80
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_3

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 82
    :cond_0
    new-instance v5, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;-><init>(Lcom/baidu/launcher/thememanager/util/DownloadStatus;)V

    .line 83
    .local v5, item:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    const-string v13, "status"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v5, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    .line 84
    const-string v13, "dest"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, path:Ljava/lang/String;
    const-string v13, "url"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, uri:Ljava/lang/String;
    const-string v13, "total_size"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 89
    .local v9, total:J
    const-string v13, "current_size"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 90
    .local v1, current:J
    const/4 v7, 0x0

    .line 91
    .local v7, percent:I
    const-wide/16 v15, 0x0

    cmp-long v13, v9, v15

    if-lez v13, :cond_1

    .line 92
    cmp-long v13, v9, v1

    if-lez v13, :cond_1

    .line 95
    const-wide/16 v15, 0x64

    mul-long/2addr v15, v1

    div-long/2addr v15, v9

    long-to-int v7, v15

    .line 98
    :cond_1
    iput v7, v5, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->percent:I

    .line 100
    if-nez v6, :cond_4

    .line 101
    const/16 v13, 0x63

    iput v13, v5, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    .line 119
    :cond_2
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-nez v13, :cond_0

    .line 138
    .end local v1           #current:J
    .end local v5           #item:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #percent:I
    .end local v9           #total:J
    .end local v11           #uri:Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    return-void

    .line 103
    .restart local v1       #current:J
    .restart local v5       #item:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #percent:I
    .restart local v9       #total:J
    .restart local v11       #uri:Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_6

    .line 105
    const-string v13, "DownloadStatus"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "file not exist: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget v13, v5, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    if-nez v13, :cond_5

    .line 108
    const-string v12, "url=?"

    .line 109
    .local v12, where:Ljava/lang/String;
    const/4 v13, 0x1

    new-array v8, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v8, v13

    .line 110
    .local v8, selectionArg:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v15, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    invoke-virtual {v13, v15, v12, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    .end local v8           #selectionArg:[Ljava/lang/String;
    .end local v12           #where:Ljava/lang/String;
    :cond_5
    const/16 v13, 0x63

    iput v13, v5, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    .line 114
    :cond_6
    if-eqz v11, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->map_status:Ljava/util/Map;

    invoke-interface {v13, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 133
    .end local v1           #current:J
    .end local v4           #f:Ljava/io/File;
    .end local v5           #item:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #percent:I
    .end local v9           #total:J
    .end local v11           #uri:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 134
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 135
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v13

    :try_start_4
    throw v13

    .line 138
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v13
.end method

.method public resetLocalInfo(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 148
    sget-object v2, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->setsync:Ljava/lang/Object;

    monitor-enter v2

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->set_local:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->set_local:Ljava/util/Set;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 164
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 161
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_4
    throw v1

    .line 164
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public updateDownload(Ljava/lang/String;IJJ)V
    .locals 5
    .parameter "url"
    .parameter "status"
    .parameter "total"
    .parameter "current"

    .prologue
    const-wide/16 v3, 0x0

    .line 220
    const/4 v1, -0x1

    .line 221
    .local v1, progress:I
    cmp-long v2, p3, v3

    if-lez v2, :cond_1

    .line 222
    cmp-long v2, p3, p5

    if-lez v2, :cond_0

    .line 223
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p5

    div-long/2addr v2, p3

    long-to-int v1, v2

    .line 228
    :cond_0
    :goto_0
    if-gez v1, :cond_2

    .line 245
    :goto_1
    return-void

    .line 225
    :cond_1
    cmp-long v2, p3, v3

    if-nez v2, :cond_0

    .line 226
    const/4 v1, 0x0

    goto :goto_0

    .line 232
    :cond_2
    sget-object v3, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->mapmemsync:Ljava/lang/Object;

    monitor-enter v3

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->map_mem_status:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;

    .line 234
    .local v0, item:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    if-nez v0, :cond_3

    .line 235
    new-instance v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;

    .end local v0           #item:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;-><init>(Lcom/baidu/launcher/thememanager/util/DownloadStatus;)V

    .line 236
    .restart local v0       #item:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    iput p2, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    .line 237
    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->percent:I

    .line 238
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->map_mem_status:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :goto_2
    monitor-exit v3

    goto :goto_1

    .end local v0           #item:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 240
    .restart local v0       #item:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    :cond_3
    :try_start_1
    iput p2, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    .line 241
    iput v1, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->percent:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
