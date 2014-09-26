.class public Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;
.super Ljava/lang/Object;
.source "TaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/cloudstorage/TaskInfo$Reader;
    }
.end annotation


# instance fields
.field public mAction:I

.field public mAllowedNetworkTypes:I

.field public mCloudProvider:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mControl:I

.field public mCreateTime:J

.field public mCurrentBytes:J

.field public mDescription:Ljava/lang/String;

.field public mDestination:I

.field public mErrorCode:J

.field public mHint:Ljava/lang/String;

.field public mId:J

.field public mLastMod:J

.field public mLocalPath:Ljava/lang/String;

.field public mMd5:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mNoIntegrity:Z

.field public mNotifyStatus:J

.field public mNumFailed:J

.field public mPackage:Ljava/lang/String;

.field public mRemotePath:Ljava/lang/String;

.field public mRetryAfer:J

.field public mStatus:I

.field public mTaskId:Ljava/lang/String;

.field public mTaskThread:Lcom/baidu/yi/sdk/cloudstorage/TaskThread;

.field public mTitle:Ljava/lang/String;

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public netAction(J)J
    .locals 6
    .parameter "now"

    .prologue
    const-wide/16 v2, 0x0

    .line 104
    const/16 v4, 0x12c

    iget v5, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    if-le v4, v5, :cond_1

    iget v4, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_1

    .line 105
    const-wide/16 v2, -0x1

    .line 112
    :cond_0
    :goto_0
    return-wide v2

    .line 106
    :cond_1
    iget v4, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mStatus:I

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->restartTime(J)J

    move-result-wide v0

    .line 110
    .local v0, when:J
    cmp-long v4, v0, p1

    if-lez v4, :cond_0

    .line 112
    sub-long v2, v0, p1

    goto :goto_0
.end method

.method public restartTime(J)J
    .locals 9
    .parameter "now"

    .prologue
    const-wide/16 v3, 0x0

    .line 116
    iget-wide v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mNumFailed:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    .line 121
    .end local p1
    :goto_0
    return-wide p1

    .line 118
    .restart local p1
    :cond_0
    iget-wide v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRetryAfer:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 119
    iget-wide v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLastMod:J

    iget-wide v3, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mRetryAfer:J

    add-long p1, v1, v3

    goto :goto_0

    .line 120
    :cond_1
    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/utils/Helpers;->sRandom:Ljava/util/Random;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 121
    .local v0, mFuzz:I
    iget-wide v1, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mLastMod:J

    .line 122
    add-int/lit16 v3, v0, 0x3e8

    mul-int/lit8 v3, v3, 0x1e

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/baidu/yi/sdk/cloudstorage/TaskInfo;->mNumFailed:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    mul-long/2addr v3, v5

    .line 121
    add-long p1, v1, v3

    goto :goto_0
.end method
