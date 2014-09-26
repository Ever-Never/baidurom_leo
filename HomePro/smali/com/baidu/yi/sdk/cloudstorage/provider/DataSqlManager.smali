.class public Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;
.super Ljava/lang/Object;
.source "DataSqlManager.java"


# static fields
.field private static instance:Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->instance:Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    invoke-direct {v0}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;-><init>()V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->instance:Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->instance:Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private insertHistoryTask(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z
    .locals 7
    .parameter "info"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 125
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v3

    .line 128
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 129
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 131
    const-string v4, "task_id"

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 133
    const-string v4, "package_name"

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_3
    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mDescription:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 135
    const-string v4, "destination"

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_4
    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mHint:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 137
    const-string v4, "file_name"

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_5
    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 139
    const-string v4, "local_path"

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_6
    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 141
    const-string v4, "mimetype"

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_7
    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 143
    const-string v4, "relative_path"

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_8
    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTitle:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 145
    const-string v4, "title"

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_9
    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mUri:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 147
    const-string v4, "uri"

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_a
    iget-object v4, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mMd5:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 149
    const-string v4, "md5"

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_b
    const-string v4, "error_code"

    iget-wide v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mErrorCode:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string v4, "status"

    iget v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string v4, "control"

    iget v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mControl:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v4, "destination"

    iget v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mDestination:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v4, "visibility"

    iget v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mVisibility:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v4, "action"

    iget v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAction:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v4, "notify_status"

    iget v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v4, "allowed_network"

    iget v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAllowedNetworkTypes:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v4, "cloud_provider"

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCloudProvider:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v4, "create_time"

    iget-wide v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCreateTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    const-string v4, "lastmod"

    iget-wide v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLastMod:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    const-string v4, "num_failed"

    iget-wide v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mNumFailed:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    const-string v4, "retry_after"

    iget-wide v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRetryAfer:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v4, "current_bytes"

    iget-wide v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCurrentBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v4, "total_bytes"

    iget-wide v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTotalBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    invoke-static {p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getHistoryContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 167
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 168
    const/4 v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public addDownloadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 16
    .parameter "taskId"
    .parameter "localPath"
    .parameter "relativePath"
    .parameter "cloud"
    .parameter "pkgName"
    .parameter "context"

    .prologue
    .line 231
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 232
    const/4 v7, 0x0

    sget-object v8, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->RUN:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    sget-object v9, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->DOWNLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    sget-object v11, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->VISIBLE:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    .line 233
    sget-object v12, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->ANY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    sget-object v13, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->UN_NOTIFIED:Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    .line 234
    sget-object v14, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->EXTERNAL:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v10, p4

    move-object/from16 v15, p6

    .line 231
    invoke-virtual/range {v0 .. v15}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public addOfflineInfoTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 16
    .parameter "taskId"
    .parameter "offlineId"
    .parameter "relativePath"
    .parameter "cloud"
    .parameter "pkgName"
    .parameter "context"

    .prologue
    .line 223
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 224
    const/4 v7, 0x0

    sget-object v8, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->RUN:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    sget-object v9, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->OFFLINEINFO:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    sget-object v11, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->VISIBLE:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    .line 225
    sget-object v12, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->ANY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    sget-object v13, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->UN_NOTIFIED:Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    .line 226
    sget-object v14, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->EXTERNAL:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v10, p4

    move-object/from16 v15, p6

    .line 223
    invoke-virtual/range {v0 .. v15}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public addOfflineTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 16
    .parameter "taskId"
    .parameter "localPath"
    .parameter "relativePath"
    .parameter "cloud"
    .parameter "pkgName"
    .parameter "context"

    .prologue
    .line 216
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 217
    const/4 v7, 0x0

    sget-object v8, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->RUN:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    sget-object v9, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->OFFLINE:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    sget-object v11, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->VISIBLE:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    .line 218
    sget-object v12, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->ANY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    sget-object v13, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->UN_NOTIFIED:Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    .line 219
    sget-object v14, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->EXTERNAL:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v10, p4

    move-object/from16 v15, p6

    .line 216
    invoke-virtual/range {v0 .. v15}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;Landroid/content/Context;)Z
    .locals 5
    .parameter "url"
    .parameter "taskId"
    .parameter "localPath"
    .parameter "relativePath"
    .parameter "pkgName"
    .parameter "title"
    .parameter "description"
    .parameter "control"
    .parameter "action"
    .parameter "cloud"
    .parameter "visible"
    .parameter "network"
    .parameter "notify"
    .parameter "destination"
    .parameter "context"

    .prologue
    .line 354
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 355
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 356
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 357
    if-eqz p15, :cond_3

    .line 358
    invoke-virtual/range {p15 .. p15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 359
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 360
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "local_path"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v2, "relative_path"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v2, "package_name"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v2, "task_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    const-string v2, "title"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 368
    const-string v2, "description"

    invoke-virtual {v0, v2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 370
    const-string v2, "uri"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_2
    const-string v2, "control"

    invoke-virtual {p8}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v2, "destination"

    invoke-virtual/range {p14 .. p14}, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v2, "visibility"

    invoke-virtual/range {p11 .. p11}, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    const-string v2, "action"

    invoke-virtual {p9}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    const-string v2, "notify_status"

    invoke-virtual/range {p13 .. p13}, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    const-string v2, "allowed_network"

    invoke-virtual/range {p12 .. p12}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string v2, "cloud_provider"

    invoke-virtual {v0, v2, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v2, "status"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v2, "create_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 381
    const-string v2, "lastmod"

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 381
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    invoke-static/range {p15 .. p15}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 388
    const/4 v2, 0x1

    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return v2

    .line 386
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addUploadTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 16
    .parameter "taskId"
    .parameter "localPath"
    .parameter "relativePath"
    .parameter "cloud"
    .parameter "pkgName"
    .parameter "context"

    .prologue
    .line 208
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 209
    const/4 v7, 0x0

    sget-object v8, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->RUN:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    sget-object v9, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->UPLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    sget-object v11, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->VISIBLE:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    .line 210
    sget-object v12, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->ANY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    sget-object v13, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->UN_NOTIFIED:Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    .line 211
    sget-object v14, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->EXTERNAL:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v10, p4

    move-object/from16 v15, p6

    .line 208
    invoke-virtual/range {v0 .. v15}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->addTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public cancelTask(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8
    .parameter "uuid"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    .line 338
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 339
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "control"

    sget-object v6, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v6}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    invoke-static {p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 342
    const-string v6, "task_id = ?"

    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v4

    .line 341
    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 343
    .local v2, row:I
    if-lez v2, :cond_0

    .line 346
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #row:I
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public deleteTask(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7
    .parameter "uuid"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v2, v3

    .line 181
    :cond_1
    :goto_0
    return v2

    .line 176
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 178
    const-string v5, "task_id = ?"

    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    .line 177
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, row:I
    if-gtz v1, :cond_1

    move v2, v3

    .line 181
    goto :goto_0
.end method

.method public getAllAuthInfo(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 82
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-object v3

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getAuthContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 86
    sget-object v2, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->AUTH_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 85
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method

.method public getDownloadTasks(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 197
    if-nez p1, :cond_0

    .line 200
    :goto_0
    return-object v5

    .line 199
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "action =?"

    .line 202
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->DOWNLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    invoke-virtual {v7}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->getValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 200
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0
.end method

.method public getTaskInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    .locals 12
    .parameter "uuid"
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 90
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 91
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getHistoryContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "task_id =?"

    .line 94
    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 95
    .local v6, hisCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    new-instance v8, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;

    invoke-direct {v8, v6}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;-><init>(Landroid/database/Cursor;)V

    .line 97
    .local v8, reader:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;
    invoke-virtual {v8, p2}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->newTaskInfo(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    move-result-object v7

    .line 110
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #hisCursor:Landroid/database/Cursor;
    .end local v8           #reader:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;
    :goto_0
    return-object v7

    .line 100
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #hisCursor:Landroid/database/Cursor;
    :cond_1
    invoke-static {p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "task_id =?"

    .line 102
    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    .line 100
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 103
    .local v9, taskCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    new-instance v8, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;

    invoke-direct {v8, v9}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;-><init>(Landroid/database/Cursor;)V

    .line 105
    .restart local v8       #reader:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;
    invoke-virtual {v8, p2}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->newTaskInfo(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    move-result-object v7

    .line 106
    .local v7, info:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    goto :goto_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #hisCursor:Landroid/database/Cursor;
    .end local v7           #info:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    .end local v8           #reader:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;
    .end local v9           #taskCursor:Landroid/database/Cursor;
    :cond_2
    move-object v7, v5

    .line 110
    goto :goto_0
.end method

.method public getUploadTasks(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 185
    if-nez p1, :cond_0

    .line 188
    :goto_0
    return-object v5

    .line 187
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 190
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getProjection()[Ljava/lang/String;

    move-result-object v2

    .line 191
    const-string v3, "action =?"

    .line 192
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->UPLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    invoke-virtual {v7}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->getValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0
.end method

.method public insertAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Landroid/net/Uri;
    .locals 4
    .parameter "info"
    .parameter "context"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 38
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 39
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "token"

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "package_name"

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "cloud_provider"

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mCloud:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    const-string v2, "api_key"

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    const-string v2, "app_id"

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mRootDir:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    const-string v2, "root_dir"

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mRootDir:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_2
    iget-object v2, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 50
    const-string v2, "secret_key"

    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_3
    invoke-static {p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getAuthContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public moveTasksToHistory(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z
    .locals 2
    .parameter "info"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 114
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->insertHistoryTask(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/DataSqlManager;->deleteTask(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public pauseTask(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8
    .parameter "uuid"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    .line 311
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 312
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 313
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "control"

    sget-object v6, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v6}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    invoke-static {p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 315
    const-string v6, "task_id = ?"

    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v4

    .line 314
    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 316
    .local v2, row:I
    if-lez v2, :cond_0

    .line 319
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #row:I
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public resumeTask(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8
    .parameter "uuid"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    .line 324
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 325
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "control"

    sget-object v6, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->RUN:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-virtual {v6}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->getValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v5, "status"

    const/16 v6, 0xbe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    invoke-static {p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 329
    const-string v6, "task_id = ?"

    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v4

    .line 328
    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 330
    .local v2, row:I
    if-lez v2, :cond_0

    .line 333
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #row:I
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public updateAuthInfo(Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;Landroid/content/Context;)Z
    .locals 10
    .parameter "info"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 57
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 58
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "token"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v5, "package_name"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v5, "cloud_provider"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mCloud:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    const-string v5, "api_key"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mApiKey:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    const-string v5, "app_id"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mRootDir:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 67
    const-string v5, "root_dir"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mRootDir:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 69
    const-string v5, "secret_key"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mSecretKey:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_3
    invoke-static {p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getAuthContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 71
    const-string v6, "package_name= ? AND cloud_provider= ? AND app_id=?"

    .line 73
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    .line 74
    iget-object v8, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mPkgName:Ljava/lang/String;

    aput-object v8, v7, v4

    iget-object v8, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mCloud:Ljava/lang/String;

    aput-object v8, v7, v3

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/baidu/yi/sdk/cloudstorage/AuthInfo;->mAppId:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 70
    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 75
    .local v2, row:I
    if-lez v2, :cond_4

    .line 78
    :goto_0
    return v3

    :cond_4
    move v3, v4

    goto :goto_0
.end method

.method public updateTaskInfo(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;Landroid/content/Context;)Z
    .locals 9
    .parameter "info"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 238
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v3, v4

    .line 290
    :cond_1
    :goto_0
    return v3

    .line 241
    :cond_2
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 242
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 243
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "task_id"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 247
    const-string v5, "task_id"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_3
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 249
    const-string v5, "package_name"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_4
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mDescription:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 251
    const-string v5, "destination"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_5
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mHint:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 253
    const-string v5, "file_name"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_6
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 255
    const-string v5, "local_path"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_7
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mMimeType:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 257
    const-string v5, "mimetype"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_8
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 259
    const-string v5, "relative_path"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_9
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTitle:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 261
    const-string v5, "title"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_a
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mUri:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 263
    const-string v5, "uri"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_b
    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mMd5:Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 265
    const-string v5, "md5"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_c
    const-string v5, "error_code"

    iget-wide v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mErrorCode:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    const-string v5, "status"

    iget v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    const-string v5, "control"

    iget v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mControl:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v5, "destination"

    iget v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mDestination:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string v5, "visibility"

    iget v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mVisibility:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v5, "action"

    iget v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAction:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v5, "notify_status"

    iget v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const-string v5, "allowed_network"

    .line 274
    iget v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAllowedNetworkTypes:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 273
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v5, "cloud_provider"

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCloudProvider:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v5, "create_time"

    iget-wide v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCreateTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 278
    const-string v5, "lastmod"

    iget-wide v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLastMod:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 279
    const-string v5, "num_failed"

    iget-wide v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mNumFailed:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 280
    const-string v5, "retry_after"

    iget-wide v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRetryAfer:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 281
    const-string v5, "current_bytes"

    iget-wide v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCurrentBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 282
    const-string v5, "total_bytes"

    iget-wide v6, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTotalBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    invoke-static {p2}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 285
    const-string v6, "task_id = ?"

    .line 286
    new-array v7, v3, [Ljava/lang/String;

    iget-object v8, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    aput-object v8, v7, v4

    .line 284
    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 287
    .local v2, row:I
    if-gtz v2, :cond_1

    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #row:I
    :cond_d
    move v3, v4

    .line 290
    goto/16 :goto_0
.end method

.method public wakeupConditionalTasks(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 294
    if-nez p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v3

    .line 298
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 299
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "status"

    const/16 v6, 0xbe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    invoke-static {p1}, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->getContentURI(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "status = ?"

    .line 303
    new-array v7, v4, [Ljava/lang/String;

    .line 304
    const/16 v8, 0x1f6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 302
    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 306
    .local v2, row:I
    if-lez v2, :cond_0

    move v3, v4

    goto :goto_0
.end method
