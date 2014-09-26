.class public Lcom/baidu/launcher/network/http/DownloadFileManager;
.super Ljava/lang/Object;
.source "DownloadFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/network/http/DownloadFileManager$1;,
        Lcom/baidu/launcher/network/http/DownloadFileManager$DownloadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadFileManager"

.field private static instance:Lcom/baidu/launcher/network/http/DownloadFileManager;


# instance fields
.field private cb:Lcom/baidu/launcher/network/http/DownloadFileManager$DownloadCallback;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private taskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/network/http/DownloadFileTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/baidu/launcher/network/http/DownloadFileManager;

    invoke-direct {v0}, Lcom/baidu/launcher/network/http/DownloadFileManager;-><init>()V

    sput-object v0, Lcom/baidu/launcher/network/http/DownloadFileManager;->instance:Lcom/baidu/launcher/network/http/DownloadFileManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadFileManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadFileManager;->taskList:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/baidu/launcher/network/http/DownloadFileManager$DownloadCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/network/http/DownloadFileManager$DownloadCallback;-><init>(Lcom/baidu/launcher/network/http/DownloadFileManager;Lcom/baidu/launcher/network/http/DownloadFileManager$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadFileManager;->cb:Lcom/baidu/launcher/network/http/DownloadFileManager$DownloadCallback;

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/network/http/DownloadFileManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/launcher/network/http/DownloadFileManager;->taskList:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/baidu/launcher/network/http/DownloadFileManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/launcher/network/http/DownloadFileManager;->instance:Lcom/baidu/launcher/network/http/DownloadFileManager;

    return-object v0
.end method


# virtual methods
.method public insertTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)J
    .locals 11
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
    .line 40
    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/baidu/launcher/network/http/DownloadFileManager;->insertTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIZ)J
    .locals 25
    .parameter "context"
    .parameter "url"
    .parameter "dst"
    .parameter "mimetype"
    .parameter "title"
    .parameter "description"
    .parameter "wifiOnly"
    .parameter "needNotify"
    .parameter "notifyType"
    .parameter "silent"

    .prologue
    .line 48
    const-wide/16 v16, -0x1

    .line 49
    .local v16, id:J
    const-wide/16 v14, -0x1

    .line 51
    .local v14, total:J
    const/16 v20, 0x0

    .line 53
    .local v20, exist:Z
    const-string v2, "DownloadFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert task "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", dst "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadFileManager;->taskList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/baidu/launcher/network/http/DownloadFileTask;

    .line 58
    .local v22, t:Lcom/baidu/launcher/network/http/DownloadFileTask;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadFileTask;->mDest:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/baidu/launcher/network/http/DownloadFileTask;->id:J

    move-wide/from16 v16, v0

    .line 62
    move/from16 v0, p8

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/baidu/launcher/network/http/DownloadFileTask;->bNeedNotify:Z

    .line 63
    move/from16 v0, p9

    move-object/from16 v1, v22

    iput v0, v1, Lcom/baidu/launcher/network/http/DownloadFileTask;->notifyType:I

    .line 64
    if-nez p7, :cond_1

    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/baidu/launcher/network/http/DownloadFileTask;->bWifiOnly:Z

    if-eqz v2, :cond_7

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/baidu/launcher/network/http/DownloadFileTask;->bWifiOnly:Z

    .line 65
    if-eqz p10, :cond_8

    move-object/from16 v0, v22

    iget-boolean v2, v0, Lcom/baidu/launcher/network/http/DownloadFileTask;->bSilent:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/baidu/launcher/network/http/DownloadFileTask;->bSilent:Z

    .line 67
    const/16 v20, 0x1

    .line 68
    const-string v2, "DownloadFileManager"

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

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v22           #t:Lcom/baidu/launcher/network/http/DownloadFileTask;
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_4

    .line 77
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "total_size"

    aput-object v3, v4, v2

    .line 82
    .local v4, projection:[Ljava/lang/String;
    const-string v5, "url=? and dest=? and mime_type=?"

    .line 86
    .local v5, selection:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    const/4 v2, 0x1

    aput-object p3, v6, v2

    const/4 v2, 0x2

    aput-object p4, v6, v2

    .line 90
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 93
    .local v19, cursor:Landroid/database/Cursor;
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    const-string v2, "_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 95
    const-string v2, "total_size"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 99
    :cond_3
    if-eqz v19, :cond_4

    .line 100
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 106
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v19           #cursor:Landroid/database/Cursor;
    :cond_4
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_5

    .line 107
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v24, values:Landroid/content/ContentValues;
    const-string v2, "dest"

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "url"

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "mime_type"

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v2, "status"

    sget-object v3, Lcom/baidu/launcher/network/http/HttpTask$State;->Idle:Lcom/baidu/launcher/network/http/HttpTask$State;

    invoke-virtual {v3}, Lcom/baidu/launcher/network/http/HttpTask$State;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v2, "download_date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string v2, "title"

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "description"

    move-object/from16 v0, v24

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "wifionly"

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 121
    .local v23, uri:Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 123
    const-string v2, "DownloadFileManager"

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

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v23           #uri:Landroid/net/Uri;
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_5
    if-nez v20, :cond_6

    .line 127
    new-instance v7, Lcom/baidu/launcher/network/http/DownloadFileTask;

    const-string v11, "type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/network/http/DownloadFileManager;->cb:Lcom/baidu/launcher/network/http/DownloadFileManager$DownloadCallback;

    move-object/from16 v18, v0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v18}, Lcom/baidu/launcher/network/http/DownloadFileTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/baidu/launcher/network/http/DownloadFileTask$Callback;)V

    .line 129
    .local v7, down:Lcom/baidu/launcher/network/http/DownloadFileTask;
    move/from16 v0, p7

    iput-boolean v0, v7, Lcom/baidu/launcher/network/http/DownloadFileTask;->bWifiOnly:Z

    .line 130
    move/from16 v0, p8

    iput-boolean v0, v7, Lcom/baidu/launcher/network/http/DownloadFileTask;->bNeedNotify:Z

    .line 131
    move/from16 v0, p9

    iput v0, v7, Lcom/baidu/launcher/network/http/DownloadFileTask;->notifyType:I

    .line 132
    move/from16 v0, p10

    iput-boolean v0, v7, Lcom/baidu/launcher/network/http/DownloadFileTask;->bSilent:Z

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadFileManager;->taskList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/network/http/DownloadFileManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 138
    .end local v7           #down:Lcom/baidu/launcher/network/http/DownloadFileTask;
    :cond_6
    return-wide v16

    .line 64
    .restart local v22       #t:Lcom/baidu/launcher/network/http/DownloadFileTask;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 65
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public isInDownloadTask(Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 5
    .parameter "url"
    .parameter "dst"
    .parameter "silent"

    .prologue
    .line 170
    const-wide/16 v1, -0x1

    .line 172
    .local v1, id:J
    iget-object v4, p0, Lcom/baidu/launcher/network/http/DownloadFileManager;->taskList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/network/http/DownloadFileTask;

    .line 174
    .local v3, t:Lcom/baidu/launcher/network/http/DownloadFileTask;
    iget-object v4, v3, Lcom/baidu/launcher/network/http/DownloadFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/baidu/launcher/network/http/DownloadFileTask;->mDest:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/baidu/launcher/network/http/DownloadFileTask;->bSilent:Z

    if-ne v4, p3, :cond_0

    .line 177
    iget-wide v1, v3, Lcom/baidu/launcher/network/http/DownloadFileTask;->id:J

    goto :goto_0

    .line 180
    .end local v3           #t:Lcom/baidu/launcher/network/http/DownloadFileTask;
    :cond_1
    return-wide v1
.end method

.method public stopTask(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 143
    const-string v3, "DownloadFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taskList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/launcher/network/http/DownloadFileManager;->taskList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-ltz v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/baidu/launcher/network/http/DownloadFileManager;->taskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/network/http/DownloadFileTask;

    .line 147
    .local v1, t:Lcom/baidu/launcher/network/http/DownloadFileTask;
    const-string v3, "DownloadFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/baidu/launcher/network/http/DownloadFileTask;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-wide v3, v1, Lcom/baidu/launcher/network/http/DownloadFileTask;->id:J

    cmp-long v3, v3, p2

    if-nez v3, :cond_0

    .line 151
    const-string v3, "DownloadFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/DownloadFileTask;->stop()V

    .line 154
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "total_size"

    iget-wide v4, v1, Lcom/baidu/launcher/network/http/DownloadFileTask;->mTotalSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/baidu/launcher/network/http/DownloadFileTask;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/baidu/launcher/network/http/DownloadFileManager;->taskList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 167
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #t:Lcom/baidu/launcher/network/http/DownloadFileTask;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method
