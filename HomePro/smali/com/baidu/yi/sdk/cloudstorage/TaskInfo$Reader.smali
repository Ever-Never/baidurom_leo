.class public Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->mCursor:Landroid/database/Cursor;

    .line 22
    return-void
.end method

.method private getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "column"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter "column"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "column"

    .prologue
    .line 60
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, index:I
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .end local v1           #s:Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public newTaskInfo(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;-><init>(Landroid/content/Context;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V

    .line 26
    .local v0, info:Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
    invoke-virtual {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->updateFromDatabase(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V

    .line 27
    return-object v0
.end method

.method public updateFromDatabase(Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 31
    const-string v0, "_id"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mId:J

    .line 32
    const-string v0, "action"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAction:I

    .line 33
    const-string v0, "allowed_network"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mAllowedNetworkTypes:I

    .line 34
    const-string v0, "cloud_provider"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCloudProvider:Ljava/lang/String;

    .line 35
    const-string v0, "control"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mControl:I

    .line 36
    const-string v0, "create_time"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCreateTime:J

    .line 37
    const-string v0, "lastmod"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLastMod:J

    .line 38
    const-string v0, "current_bytes"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mCurrentBytes:J

    .line 39
    const-string v0, "total_bytes"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTotalBytes:J

    .line 40
    const-string v0, "status"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    .line 41
    const-string v0, "destination"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mDestination:I

    .line 42
    const-string v0, "visibility"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mVisibility:I

    .line 43
    const-string v0, "notify_status"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mNotifyStatus:J

    .line 44
    const-string v0, "error_code"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mErrorCode:J

    .line 45
    const-string v0, "title"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTitle:Ljava/lang/String;

    .line 46
    const-string v0, "description"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mDescription:Ljava/lang/String;

    .line 47
    const-string v0, "local_path"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLocalPath:Ljava/lang/String;

    .line 48
    const-string v0, "relative_path"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRemotePath:Ljava/lang/String;

    .line 49
    const-string v0, "package_name"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mPackage:Ljava/lang/String;

    .line 50
    const-string v0, "mimetype"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mMimeType:Ljava/lang/String;

    .line 51
    const-string v0, "uri"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mUri:Ljava/lang/String;

    .line 52
    const-string v0, "file_name"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mHint:Ljava/lang/String;

    .line 53
    const-string v0, "task_id"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mTaskId:Ljava/lang/String;

    .line 54
    const-string v0, "retry_after"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRetryAfer:J

    .line 55
    const-string v0, "num_failed"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mNumFailed:J

    .line 56
    const-string v0, "md5"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mMd5:Ljava/lang/String;

    .line 57
    return-void
.end method
