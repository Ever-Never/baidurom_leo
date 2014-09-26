.class public Lcom/baidu/launcher/network/http/DownloadThemeManager;
.super Ljava/lang/Object;
.source "DownloadThemeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadThemeManager"

.field private static instance:Lcom/baidu/launcher/network/http/DownloadThemeManager;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/network/http/DownloadThemeFileTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/launcher/network/http/DownloadThemeManager;

    invoke-direct {v0}, Lcom/baidu/launcher/network/http/DownloadThemeManager;-><init>()V

    sput-object v0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->instance:Lcom/baidu/launcher/network/http/DownloadThemeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->taskList:Ljava/util/List;

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/baidu/launcher/network/http/DownloadThemeManager;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->instance:Lcom/baidu/launcher/network/http/DownloadThemeManager;

    return-object v0
.end method


# virtual methods
.method public insertTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)J
    .locals 23
    .parameter "context"
    .parameter "url"
    .parameter "dst"
    .parameter "mimetype"
    .parameter "title"
    .parameter "description"
    .parameter "wifiOnly"
    .parameter "needNotify"
    .parameter "notifyType"

    .prologue
    .line 42
    const-wide/16 v10, -0x1

    .line 43
    .local v10, id:J
    const-wide/16 v14, -0x1

    .line 46
    .local v14, total:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->taskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;

    .line 47
    .local v13, t:Lcom/baidu/launcher/network/http/DownloadThemeFileTask;
    iget-object v2, v13, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v13, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mDest:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v13, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v13, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bWifiOnly:Z

    move/from16 v0, p7

    if-ne v2, v0, :cond_0

    .line 51
    iget-wide v10, v13, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->id:J

    .line 53
    move/from16 v0, p8

    iput-boolean v0, v13, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bNeedNotify:Z

    .line 54
    move/from16 v0, p9

    iput v0, v13, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->notifyType:I

    .line 56
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v10, v11, v2}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownloadWithNotice(Landroid/content/Context;JZ)V

    .line 58
    const-string v2, "DownloadThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find exist task "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v13           #t:Lcom/baidu/launcher/network/http/DownloadThemeFileTask;
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_3

    .line 67
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "total_size"

    aput-object v3, v4, v2

    .line 72
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "url=? and dest=? and mime_type=?"

    .line 76
    .local v5, selection:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v2, 0x1

    aput-object p3, v6, v2

    const/4 v2, 0x2

    aput-object p4, v6, v2

    .line 80
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 83
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 85
    const-string v2, "total_size"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 87
    const-string v2, "DownloadThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find exist record "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    if-eqz v8, :cond_3

    .line 91
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 97
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-nez v2, :cond_4

    .line 98
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v17, values:Landroid/content/ContentValues;
    const-string v2, "dest"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "url"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "mime_type"

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "status"

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v2, "download_date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    const-string v2, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "description"

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "wifionly"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 112
    .local v16, uri:Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 114
    const-string v2, "DownloadThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new task "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v16           #uri:Landroid/net/Uri;
    :goto_0
    return-wide v10

    .line 117
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_4
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v2, "status"

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v18, "_id=?"

    .line 120
    .local v18, whereStr:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    .line 124
    .local v12, selectArray:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v3, v0, v1, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertTaskWithStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)J
    .locals 24
    .parameter "context"
    .parameter "url"
    .parameter "dst"
    .parameter "mimetype"
    .parameter "title"
    .parameter "description"
    .parameter "wifiOnly"
    .parameter "needNotify"
    .parameter "notifyType"

    .prologue
    .line 221
    const-wide/16 v16, -0x1

    .line 222
    .local v16, id:J
    const-wide/16 v14, -0x1

    .line 225
    .local v14, total:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->taskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;

    .line 226
    .local v21, t:Lcom/baidu/launcher/network/http/DownloadThemeFileTask;
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mDest:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, v21

    iget-boolean v2, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bWifiOnly:Z

    move/from16 v0, p7

    if-ne v2, v0, :cond_0

    .line 230
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->id:J

    move-wide/from16 v16, v0

    .line 232
    move/from16 v0, p8

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bNeedNotify:Z

    .line 233
    move/from16 v0, p9

    move-object/from16 v1, v21

    iput v0, v1, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->notifyType:I

    .line 235
    const-string v2, "DownloadThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find exist task "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v21           #t:Lcom/baidu/launcher/network/http/DownloadThemeFileTask;
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_3

    .line 244
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "total_size"

    aput-object v3, v4, v2

    .line 249
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "url=? and dest=? and mime_type=?"

    .line 253
    .local v5, selection:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v2, 0x1

    aput-object p3, v6, v2

    const/4 v2, 0x2

    aput-object p4, v6, v2

    .line 257
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 260
    .local v19, cursor:Landroid/database/Cursor;
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 262
    const-string v2, "total_size"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 264
    const-string v2, "DownloadThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find exist record "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2
    if-eqz v19, :cond_3

    .line 268
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 274
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v19           #cursor:Landroid/database/Cursor;
    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_4

    .line 275
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v23, values:Landroid/content/ContentValues;
    const-string v2, "dest"

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "url"

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v2, "mime_type"

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "status"

    const/16 v3, 0x69

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v2, "download_date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    const-string v2, "title"

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "description"

    move-object/from16 v0, v23

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, "wifionly"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v22

    .line 289
    .local v22, uri:Landroid/net/Uri;
    invoke-static/range {v22 .. v22}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 291
    const-string v2, "DownloadThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new task "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v22           #uri:Landroid/net/Uri;
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_4
    new-instance v7, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;

    const-string v11, "wallpaper"

    const/16 v18, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v18}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/baidu/launcher/network/http/DownloadThemeFileTask$Callback;)V

    .line 296
    .local v7, down:Lcom/baidu/launcher/network/http/DownloadThemeFileTask;
    move/from16 v0, p7

    iput-boolean v0, v7, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bWifiOnly:Z

    .line 297
    move/from16 v0, p8

    iput-boolean v0, v7, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bNeedNotify:Z

    .line 298
    move/from16 v0, p9

    iput v0, v7, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->notifyType:I

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->taskList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 303
    return-wide v16
.end method

.method public startNextTask(Landroid/content/Context;)V
    .locals 39
    .parameter "context"

    .prologue
    .line 133
    const-string v3, "theme/ICON"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getActiveDownload(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    .line 135
    .local v35, uri:Landroid/net/Uri;
    if-nez v35, :cond_2

    .line 136
    const-wide/16 v9, -0x1

    .local v9, id:J
    const-wide/16 v24, 0x0

    .line 137
    .local v24, total:J
    const/16 v19, 0x0

    .local v19, url:Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, dst:Ljava/lang/String;
    const/16 v22, 0x0

    .line 138
    .local v22, title:Ljava/lang/String;
    const/16 v38, 0x0

    .line 140
    .local v38, wifiOnly:Z
    const/4 v3, 0x6

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "total_size"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "wifionly"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "dest"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "url"

    aput-object v4, v5, v3

    const/4 v3, 0x5

    const-string v4, "title"

    aput-object v4, v5, v3

    .line 149
    .local v5, projection:[Ljava/lang/String;
    const-string v6, "mime_type=? and status=?"

    .line 152
    .local v6, selection:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "theme/ICON"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const/16 v4, 0x65

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 157
    .local v7, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 160
    .local v33, cursor:Landroid/database/Cursor;
    if-eqz v33, :cond_0

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    const-string v3, "_id"

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 162
    const-string v3, "total_size"

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 163
    const-string v3, "url"

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 164
    const-string v3, "dest"

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 165
    const-string v3, "wifionly"

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/16 v38, 0x1

    .line 166
    :goto_0
    const-string v3, "title"

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 167
    const-string v3, "DownloadThemeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "find exist record "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    if-eqz v33, :cond_1

    .line 171
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 172
    const/16 v33, 0x0

    .line 175
    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-lez v3, :cond_2

    .line 176
    new-instance v12, Landroid/content/Intent;

    const-class v3, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    .local v12, aProgressIntent:Landroid/content/Intent;
    const-string v3, "extra_title"

    move-object/from16 v0, v22

    invoke-virtual {v12, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v3, "extra_id"

    invoke-virtual {v12, v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 179
    const/high16 v3, 0x2400

    invoke-virtual {v12, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    new-instance v16, Landroid/content/Intent;

    const-class v3, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v16, failIntent:Landroid/content/Intent;
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v3, "fragment_index"

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const/high16 v3, 0x2400

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v8

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v16}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->addNotification(JZLandroid/content/Intent;ZLandroid/content/Intent;ZLandroid/content/Intent;)V

    .line 189
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->showProgressNotifAtOnce(J)V

    .line 192
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v36, values:Landroid/content/ContentValues;
    const-string v3, "status"

    const/16 v4, 0x69

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v37, "_id=?"

    .line 195
    .local v37, whereStr:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/4 v3, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v34, v3

    .line 198
    .local v34, selectArray:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v34

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    new-instance v17, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;

    const-string v21, "theme/ICON"

    const-string v23, "descripe"

    const/16 v28, 0x0

    move-object/from16 v18, p1

    move-wide/from16 v26, v9

    invoke-direct/range {v17 .. v28}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/baidu/launcher/network/http/DownloadThemeFileTask$Callback;)V

    .line 203
    .local v17, down:Lcom/baidu/launcher/network/http/DownloadThemeFileTask;
    move/from16 v0, v38

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bWifiOnly:Z

    .line 204
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bNeedNotify:Z

    .line 205
    const/16 v3, 0xb

    move-object/from16 v0, v17

    iput v3, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->notifyType:I

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->taskList:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 210
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v26

    const/16 v28, 0x69

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    move-object/from16 v27, v19

    invoke-virtual/range {v26 .. v32}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->updateDownload(Ljava/lang/String;IJJ)V

    .line 217
    .end local v5           #projection:[Ljava/lang/String;
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v9           #id:J
    .end local v12           #aProgressIntent:Landroid/content/Intent;
    .end local v16           #failIntent:Landroid/content/Intent;
    .end local v17           #down:Lcom/baidu/launcher/network/http/DownloadThemeFileTask;
    .end local v19           #url:Ljava/lang/String;
    .end local v20           #dst:Ljava/lang/String;
    .end local v22           #title:Ljava/lang/String;
    .end local v24           #total:J
    .end local v33           #cursor:Landroid/database/Cursor;
    .end local v34           #selectArray:[Ljava/lang/String;
    .end local v36           #values:Landroid/content/ContentValues;
    .end local v37           #whereStr:Ljava/lang/String;
    .end local v38           #wifiOnly:Z
    :cond_2
    return-void

    .line 165
    .restart local v5       #projection:[Ljava/lang/String;
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #id:J
    .restart local v19       #url:Ljava/lang/String;
    .restart local v20       #dst:Ljava/lang/String;
    .restart local v22       #title:Ljava/lang/String;
    .restart local v24       #total:J
    .restart local v33       #cursor:Landroid/database/Cursor;
    .restart local v38       #wifiOnly:Z
    :cond_3
    const/16 v38, 0x0

    goto/16 :goto_0
.end method

.method public stopTask(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 308
    const-string v2, "DownloadThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " taskList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->taskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_1

    .line 311
    iget-object v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->taskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;

    .line 312
    .local v1, t:Lcom/baidu/launcher/network/http/DownloadThemeFileTask;
    const-string v2, "DownloadThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-wide v2, v1, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->id:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 316
    const-string v2, "DownloadThemeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->stop()V

    .line 326
    iget-object v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeManager;->taskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 332
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/baidu/launcher/network/http/DownloadThemeFileTask;
    :cond_1
    return-void
.end method
