.class public Lcom/android/systemui/recent/ClearView;
.super Landroid/widget/FrameLayout;
.source "ClearView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/ClearView$MyAnimateHandler;
    }
.end annotation


# static fields
.field private static final DISMISS_TIMES:I = 0x3e8

.field private static final MAX_LEVEL:I = 0x16

.field private static final PROGRESS_CHANGED_TIMES:I = 0x32

.field private static final RUNNING_APP_NUMBERS_COLOR:I = -0xfa4a5

.field private static final UPDATE_MEMINFO_TIMES:I = 0x12c


# instance fields
.field private mAnimateHandler:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

.field private mCenterClearView:Landroid/view/View;

.field private mClearAllButton:Landroid/widget/ImageButton;

.field private mClearButtonClicked:Z

.field private mContext:Landroid/content/Context;

.field private mLockedNumberText:Landroid/widget/TextView;

.field private mMemoryUsage:Landroid/widget/TextView;

.field private mOpenAppText:Landroid/widget/TextView;

.field private mProgressCircle:Lcom/android/systemui/recent/ProgressCircle;

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsContainer:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

.field private mRecentsPanelView:Lcom/android/systemui/recent/RecentsPanelView;

.field private mRemoveTaskIndex:I

.field private mRunningStatText:Landroid/widget/TextView;

.field private mTargetClearSize:J

.field private mTaskViewCount:I

.field private mTaskViewParent:Landroid/view/ViewGroup;

.field private mTaskViews:[Landroid/view/View;

.field private mTotalSize:J

.field private mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

.field private mtargetUsedSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/recent/ClearView;->mTotalSize:J

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/ClearView;->mTaskViews:[Landroid/view/View;

    .line 53
    iput v2, p0, Lcom/android/systemui/recent/ClearView;->mTaskViewCount:I

    .line 54
    iput v2, p0, Lcom/android/systemui/recent/ClearView;->mRemoveTaskIndex:I

    .line 56
    iput-boolean v2, p0, Lcom/android/systemui/recent/ClearView;->mClearButtonClicked:Z

    .line 60
    iput-object p1, p0, Lcom/android/systemui/recent/ClearView;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/ClearView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentsHorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/recent/ClearView;Lcom/android/systemui/recent/RecentsHorizontalScrollView;)Lcom/android/systemui/recent/RecentsHorizontalScrollView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/systemui/recent/ClearView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mRecentsPanelView:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/ClearView$MyAnimateHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mAnimateHandler:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/recent/ClearView;Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/systemui/recent/ClearView;->mRecentsPanelView:Lcom/android/systemui/recent/RecentsPanelView;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/systemui/recent/ClearView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/systemui/recent/ClearView;->mRemoveTaskIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/recent/ClearView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/android/systemui/recent/ClearView;->mTargetClearSize:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/recent/ClearView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/recent/ClearView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/ClearView;->setAnimationView(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/ProgressCircle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mProgressCircle:Lcom/android/systemui/recent/ProgressCircle;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/recent/ClearView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/ClearView;->updateProgress(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/recent/ClearView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mMemoryUsage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/recent/ClearView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/android/systemui/recent/ClearView;->mtargetUsedSize:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/recent/ClearView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/android/systemui/recent/ClearView;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/systemui/recent/ClearView;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/systemui/recent/ClearView;->mLockedNumberText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/ClearView;)Lcom/baidu/security/sysop/YiProcessManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/ClearView;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mTaskViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/recent/ClearView;[Landroid/view/View;)[Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/systemui/recent/ClearView;->mTaskViews:[Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/ClearView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mTaskViewParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/recent/ClearView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/systemui/recent/ClearView;->mTaskViewCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/ClearView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mOpenAppText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/recent/ClearView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/systemui/recent/ClearView;->updateMemoryInfo()V

    return-void
.end method

.method private clearAllProcessInBackground(J)V
    .locals 3
    .parameter "beforeFreeSize"

    .prologue
    .line 150
    new-instance v0, Lcom/android/systemui/recent/ClearView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/ClearView$2;-><init>(Lcom/android/systemui/recent/ClearView;)V

    .line 180
    .local v0, aTask:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    return-void
.end method

.method private getAllTask()V
    .locals 5

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/systemui/recent/ClearView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    const v3, 0x7f09009e

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/recent/ClearView;->mTaskViewParent:Landroid/view/ViewGroup;

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, count:I
    iget-object v2, p0, Lcom/android/systemui/recent/ClearView;->mTaskViewParent:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/systemui/recent/ClearView;->mTaskViewParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 141
    :cond_0
    if-lez v0, :cond_1

    .line 142
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 143
    .local v1, message:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 144
    iget-object v2, p0, Lcom/android/systemui/recent/ClearView;->mTaskViewParent:Landroid/view/ViewGroup;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    iget-object v2, p0, Lcom/android/systemui/recent/ClearView;->mAnimateHandler:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 147
    .end local v1           #message:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private performanceAnimation(JJ)V
    .locals 2
    .parameter "targetUsedSize"
    .parameter "targetClearSize"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mAnimateHandler:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->removeMessages(I)V

    .line 186
    iput-wide p1, p0, Lcom/android/systemui/recent/ClearView;->mtargetUsedSize:J

    .line 187
    iput-wide p3, p0, Lcom/android/systemui/recent/ClearView;->mTargetClearSize:J

    .line 188
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mAnimateHandler:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->sendEmptyMessage(I)Z

    .line 189
    return-void
.end method

.method private setAnimationView(Z)V
    .locals 2
    .parameter "run"

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mCenterClearView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 349
    :cond_0
    return-void
.end method

.method private updateMemoryInfo()V
    .locals 14

    .prologue
    .line 327
    iget-object v7, p0, Lcom/android/systemui/recent/ClearView;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    invoke-virtual {v7}, Lcom/baidu/security/sysop/YiProcessManager;->getMemTotalSize()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/systemui/recent/ClearView;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    invoke-virtual {v9}, Lcom/baidu/security/sysop/YiProcessManager;->getMemFreeSize()J

    move-result-wide v9

    sub-long v4, v7, v9

    .line 329
    .local v4, useSize:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v8, 0x64

    mul-long/2addr v8, v4

    iget-wide v10, p0, Lcom/android/systemui/recent/ClearView;->mTotalSize:J

    div-long/2addr v8, v10

    long-to-double v8, v8

    const-wide/high16 v10, 0x3fe0

    add-double/2addr v8, v10

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " %"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, usedStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/recent/ClearView;->mMemoryUsage:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-wide v7, p0, Lcom/android/systemui/recent/ClearView;->mTotalSize:J

    const-wide/16 v9, 0x16

    div-long v0, v7, v9

    .line 333
    .local v0, perLevelSize:J
    const-wide/16 v7, 0x2

    div-long v7, v0, v7

    add-long/2addr v7, v4

    div-long/2addr v7, v0

    long-to-int v7, v7

    invoke-direct {p0, v7}, Lcom/android/systemui/recent/ClearView;->updateProgress(I)V

    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, runningAppSize:I
    iget-object v7, p0, Lcom/android/systemui/recent/ClearView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v7}, Lcom/android/systemui/recent/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 336
    iget-object v7, p0, Lcom/android/systemui/recent/ClearView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v7}, Lcom/android/systemui/recent/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 338
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/recent/ClearView;->mOpenAppText:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v7, p0, Lcom/android/systemui/recent/ClearView;->mContext:Landroid/content/Context;

    const v8, 0x7f0c0108

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recent/ClearView;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-wide v12, p0, Lcom/android/systemui/recent/ClearView;->mTotalSize:J

    sub-long/2addr v12, v4

    invoke-static {v11, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, ""

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, runningResult:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/recent/ClearView;->mRunningStatText:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    return-void
.end method

.method private updateProgress(I)V
    .locals 5
    .parameter "progress"

    .prologue
    .line 352
    mul-int/lit8 v1, p1, 0x64

    div-int/lit8 v1, v1, 0x16

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v0, v1

    .line 353
    .local v0, percent:I
    const/16 v1, 0x5a

    if-lt v0, v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView;->mProgressCircle:Lcom/android/systemui/recent/ProgressCircle;

    iget-object v2, p0, Lcom/android/systemui/recent/ClearView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/ProgressCircle;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView;->mProgressCircle:Lcom/android/systemui/recent/ProgressCircle;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recent/ProgressCircle;->setProgress(I)V

    .line 364
    return-void

    .line 356
    :cond_0
    const/16 v1, 0x50

    if-lt v0, v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView;->mProgressCircle:Lcom/android/systemui/recent/ProgressCircle;

    iget-object v2, p0, Lcom/android/systemui/recent/ClearView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/ProgressCircle;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView;->mProgressCircle:Lcom/android/systemui/recent/ProgressCircle;

    invoke-virtual {p0}, Lcom/android/systemui/recent/ClearView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/ProgressCircle;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/ClearView;->mClearButtonClicked:Z

    .line 68
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mClearAllButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mClearAllButton:Landroid/widget/ImageButton;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 70
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    .line 111
    iget-object v6, p0, Lcom/android/systemui/recent/ClearView;->mRecentsPanelView:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentsPanelView;->removeRecentGuide()V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f09000c

    if-ne v6, v7, :cond_1

    .line 113
    iget-object v6, p0, Lcom/android/systemui/recent/ClearView;->mClearAllButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->performClick()Z

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/recent/ClearView;->mClearButtonClicked:Z

    if-nez v6, :cond_0

    .line 116
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/recent/ClearView;->mClearButtonClicked:Z

    .line 117
    iget-object v6, p0, Lcom/android/systemui/recent/ClearView;->mClearAllButton:Landroid/widget/ImageButton;

    const v7, 0x7f020010

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 118
    iget-object v6, p0, Lcom/android/systemui/recent/ClearView;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    invoke-virtual {v6}, Lcom/baidu/security/sysop/YiProcessManager;->getMemFreeSize()J

    move-result-wide v0

    .line 119
    .local v0, beforeFreeSize:J
    iget-object v6, p0, Lcom/android/systemui/recent/ClearView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v6}, Lcom/android/systemui/recent/RecentTasksLoader;->getCleanableProcessSize()J

    move-result-wide v2

    .line 120
    .local v2, targetClearSize:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 121
    const-wide/16 v2, 0x0

    .line 122
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recent/ClearView;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    invoke-virtual {v6}, Lcom/baidu/security/sysop/YiProcessManager;->getMemTotalSize()J

    move-result-wide v6

    sub-long/2addr v6, v0

    sub-long v4, v6, v2

    .line 124
    .local v4, targetUsedSize:J
    invoke-direct {p0}, Lcom/android/systemui/recent/ClearView;->getAllTask()V

    .line 126
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/ClearView;->clearAllProcessInBackground(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    invoke-direct {p0, v4, v5, v2, v3}, Lcom/android/systemui/recent/ClearView;->performanceAnimation(JJ)V

    goto :goto_0

    .line 127
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/recent/ClearView;->mAnimateHandler:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->removeMessages(I)V

    .line 76
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/security/sysop/YiProcessManager;->getInstance(Landroid/content/Context;)Lcom/baidu/security/sysop/YiProcessManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/ClearView;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    .line 82
    new-instance v1, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;-><init>(Lcom/android/systemui/recent/ClearView;)V

    iput-object v1, p0, Lcom/android/systemui/recent/ClearView;->mAnimateHandler:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    .line 83
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView;->mYiProcessManager:Lcom/baidu/security/sysop/YiProcessManager;

    invoke-virtual {v1}, Lcom/baidu/security/sysop/YiProcessManager;->getMemTotalSize()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/recent/ClearView;->mTotalSize:J

    .line 84
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/ClearView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/ProgressCircle;

    iput-object v1, p0, Lcom/android/systemui/recent/ClearView;->mProgressCircle:Lcom/android/systemui/recent/ProgressCircle;

    .line 85
    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/ClearView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/ClearView;->mCenterClearView:Landroid/view/View;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView;->mCenterClearView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView;->mProgressCircle:Lcom/android/systemui/recent/ProgressCircle;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/ProgressCircle;->setMax(I)V

    .line 88
    const v1, 0x7f09000e

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/ClearView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/recent/ClearView;->mClearAllButton:Landroid/widget/ImageButton;

    .line 89
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView;->mClearAllButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f09000f

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/ClearView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recent/ClearView;->mMemoryUsage:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f090013

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/ClearView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recent/ClearView;->mRunningStatText:Landroid/widget/TextView;

    .line 92
    const v1, 0x7f090011

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/ClearView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/recent/ClearView;->mOpenAppText:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/android/systemui/recent/ClearView;->mAnimateHandler:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->sendEmptyMessage(I)Z

    .line 95
    new-instance v0, Lcom/android/systemui/recent/ClearView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/ClearView$1;-><init>(Lcom/android/systemui/recent/ClearView;)V

    .line 107
    .local v0, updateView:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {p0}, Lcom/android/systemui/recent/ClearView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 108
    return-void
.end method
