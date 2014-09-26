.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;
.super Ljava/lang/Object;
.source "AppRunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceProcessComparator;,
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;,
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;,
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;,
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;,
        Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static final MAX_SERVICES:I = 0x64


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field public mBackgroundProcessMemory:J

.field mFilteredBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mFilteredMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field public mForegroundProcessMemory:J

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field protected mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field public mNumBackgroundProcesses:I

.field public mNumForegroundProcesses:I

.field public mNumServiceProcesses:I

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceProcessComparator;

.field public mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z

.field final mYiPm:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceProcessComparator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessComparator:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceProcessComparator;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mItems:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mFilteredMergedItems:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mFilteredBackgroundItems:Ljava/util/ArrayList;

    .line 470
    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mYiPm:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    .line 471
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;)V
    .locals 1
    .parameter "context"
    .parameter "processManager"

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceProcessComparator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceProcessComparator;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessComparator:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceProcessComparator;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mItems:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mFilteredMergedItems:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mFilteredBackgroundItems:Ljava/util/ArrayList;

    .line 474
    if-nez p2, :cond_0

    .line 475
    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mYiPm:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mYiPm:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    goto :goto_0
.end method

.method private filterMergedItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_2

    .line 1043
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    :cond_1
    return-object v3

    .line 1046
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1048
    .local v3, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    const/4 v1, 0x0

    .line 1049
    .local v1, it:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 1050
    .local v2, item:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    const/4 v0, 0x0

    .line 1051
    .local v0, ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    const/4 v4, 0x0

    .line 1052
    .local v4, ptype:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1053
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1054
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    .line 1055
    .restart local v2       #item:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->needFilter(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1056
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .parameter "pi"

    .prologue
    const/4 v0, 0x1

    .line 483
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 497
    :cond_0
    :goto_0
    return v0

    .line 486
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 497
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .parameter "className"
    .parameter "item"

    .prologue
    .line 453
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 455
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 456
    .local v0, label:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 466
    .end local v0           #label:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 461
    :cond_2
    move-object v0, p1

    .line 462
    .local v0, label:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 463
    .local v1, tail:I
    if-ltz v1, :cond_1

    .line 464
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private needFilter(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    .line 1018
    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    if-nez v7, :cond_2

    .line 1019
    :cond_0
    const/4 v6, 0x0

    .line 1037
    :cond_1
    :goto_0
    return v6

    .line 1022
    :cond_2
    const/4 v6, 0x0

    .line 1023
    .local v6, retVal:Z
    const/4 v0, 0x0

    .line 1024
    .local v0, ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    const/4 v5, 0x0

    .line 1025
    .local v5, ptype:I
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v8, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    iget v8, v8, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;

    .line 1026
    .restart local v0       #ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    if-eqz v0, :cond_1

    iget-object v7, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v7, :cond_1

    .line 1027
    iget-object v7, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 1028
    .local v4, pkgName:Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mYiPm:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;

    invoke-virtual {v7, v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppProcessManager;->getProtectionType(Ljava/lang/String;)I

    move-result v5

    .line 1029
    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    .line 1031
    :cond_3
    const/4 v6, 0x1

    .line 1032
    goto :goto_0

    .line 1027
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1082
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1083
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1084
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentFilteredBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1094
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1095
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mFilteredBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1096
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentFilteredMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1089
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mFilteredMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1090
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1077
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1078
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 502
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 503
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 504
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 505
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 506
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 507
    return-void
.end method

.method public setWatchingBackgroundItems(Z)V
    .locals 2
    .parameter "watching"

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1071
    :try_start_0
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mWatchingBackgroundItems:Z

    .line 1072
    monitor-exit v1

    .line 1073
    return-void

    .line 1072
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 61
    .parameter "context"
    .parameter "am"

    .prologue
    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v43

    .line 512
    .local v43, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v57, v0

    add-int/lit8 v57, v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    .line 514
    const/4 v15, 0x0

    .line 518
    .local v15, changed:Z
    const/16 v57, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v50

    .line 522
    .local v50, services:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v50, :cond_1

    invoke-interface/range {v50 .. v50}, Ljava/util/List;->size()I

    move-result v9

    .line 523
    .local v9, NS:I
    :goto_0
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    if-ge v0, v9, :cond_3

    .line 524
    move-object/from16 v0, v50

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 528
    .local v51, si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v51

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v57, v0

    if-nez v57, :cond_2

    move-object/from16 v0, v51

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v57, v0

    if-nez v57, :cond_2

    .line 529
    move-object/from16 v0, v50

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 530
    add-int/lit8 v22, v22, -0x1

    .line 531
    add-int/lit8 v9, v9, -0x1

    .line 523
    :cond_0
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 522
    .end local v9           #NS:I
    .end local v22           #i:I
    .end local v51           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 536
    .restart local v9       #NS:I
    .restart local v22       #i:I
    .restart local v51       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v51

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v57, v0

    and-int/lit8 v57, v57, 0x8

    if-eqz v57, :cond_0

    .line 538
    move-object/from16 v0, v50

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 539
    add-int/lit8 v22, v22, -0x1

    .line 540
    add-int/lit8 v9, v9, -0x1

    .line 541
    goto :goto_2

    .line 547
    .end local v51           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v45

    .line 550
    .local v45, processes:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v45, :cond_4

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v7

    .line 551
    .local v7, NP:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->clear()V

    .line 552
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v0, v7, :cond_5

    .line 553
    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 554
    .local v39, pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v58, v0

    new-instance v59, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;

    move-object/from16 v0, v59

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v57 .. v59}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 552
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 550
    .end local v7           #NP:I
    .end local v39           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 559
    .restart local v7       #NP:I
    :cond_5
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    if-ge v0, v9, :cond_7

    .line 560
    move-object/from16 v0, v50

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 561
    .restart local v51       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v51

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v57, v0

    const-wide/16 v59, 0x0

    cmp-long v57, v57, v59

    if-nez v57, :cond_6

    move-object/from16 v0, v51

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v57, v0

    if-lez v57, :cond_6

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;

    .line 563
    .local v10, ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    if-eqz v10, :cond_6

    .line 564
    const/16 v57, 0x1

    move/from16 v0, v57

    iput-boolean v0, v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;->hasServices:Z

    .line 565
    move-object/from16 v0, v51

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v57, v0

    if-eqz v57, :cond_6

    .line 566
    const/16 v57, 0x1

    move/from16 v0, v57

    iput-boolean v0, v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 559
    .end local v10           #ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 573
    .end local v51           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v0, v9, :cond_13

    .line 574
    move-object/from16 v0, v50

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 581
    .restart local v51       #si:Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v51

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v57, v0

    const-wide/16 v59, 0x0

    cmp-long v57, v57, v59

    if-nez v57, :cond_b

    move-object/from16 v0, v51

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v57, v0

    if-lez v57, :cond_b

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;

    .line 583
    .restart local v10       #ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    if-eqz v10, :cond_b

    iget-boolean v0, v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v57, v0

    if-nez v57, :cond_b

    .line 589
    iget-object v0, v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v57, v0

    const/16 v58, 0x12c

    move/from16 v0, v57

    move/from16 v1, v58

    if-ge v0, v1, :cond_b

    .line 593
    const/16 v53, 0x0

    .line 594
    .local v53, skip:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    iget-object v0, v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    check-cast v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;

    .line 595
    .restart local v10       #ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    :goto_7
    if-eqz v10, :cond_9

    .line 596
    iget-boolean v0, v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;->hasServices:Z

    move/from16 v57, v0

    if-nez v57, :cond_8

    iget-object v0, v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v57

    if-eqz v57, :cond_a

    .line 597
    :cond_8
    const/16 v53, 0x1

    .line 602
    :cond_9
    if-eqz v53, :cond_b

    .line 573
    .end local v10           #ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    .end local v53           #skip:Z
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_6

    .line 600
    .restart local v10       #ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    .restart local v53       #skip:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    iget-object v0, v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    check-cast v10, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;

    .restart local v10       #ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    goto :goto_7

    .line 609
    .end local v10           #ainfo:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$AppProcessInfo;
    .end local v53           #skip:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/util/HashMap;

    .line 610
    .local v46, procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    if-nez v46, :cond_c

    .line 611
    new-instance v46, Ljava/util/HashMap;

    .end local v46           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    invoke-direct/range {v46 .. v46}, Ljava/util/HashMap;-><init>()V

    .line 612
    .restart local v46       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v58, v0

    move-object/from16 v0, v57

    move/from16 v1, v58

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 614
    :cond_c
    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 615
    .local v44, proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    if-nez v44, :cond_d

    .line 616
    const/4 v15, 0x1

    .line 617
    new-instance v44, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    move-object/from16 v0, v51

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v57, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v57

    move-object/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 618
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    move-object/from16 v0, v51

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v57

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :cond_d
    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mCurSeq:I

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v58, v0

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_11

    .line 622
    move-object/from16 v0, v51

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v57, v0

    const-wide/16 v59, 0x0

    cmp-long v57, v57, v59

    if-nez v57, :cond_12

    move-object/from16 v0, v51

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v40, v0

    .line 623
    .local v40, pid:I
    :goto_9
    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v57, v0

    move/from16 v0, v40

    move/from16 v1, v57

    if-eq v0, v1, :cond_10

    .line 624
    const/4 v15, 0x1

    .line 625
    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v57, v0

    move/from16 v0, v57

    move/from16 v1, v40

    if-eq v0, v1, :cond_10

    .line 626
    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v57, v0

    if-eqz v57, :cond_e

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/util/SparseArray;->remove(I)V

    .line 629
    :cond_e
    if-eqz v40, :cond_f

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v40

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 632
    :cond_f
    move/from16 v0, v40

    move-object/from16 v1, v44

    iput v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    .line 635
    :cond_10
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->clear()V

    .line 636
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v57, v0

    move/from16 v0, v57

    move-object/from16 v1, v44

    iput v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mCurSeq:I

    .line 638
    .end local v40           #pid:I
    :cond_11
    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v57

    or-int v15, v15, v57

    goto/16 :goto_8

    .line 622
    :cond_12
    const/16 v40, 0x0

    goto :goto_9

    .line 643
    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    .end local v46           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    .end local v51           #si:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_13
    const/16 v22, 0x0

    :goto_a
    move/from16 v0, v22

    if-ge v0, v7, :cond_18

    .line 644
    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 645
    .restart local v39       #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 646
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    if-nez v44, :cond_15

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v44

    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    check-cast v44, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 651
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    if-nez v44, :cond_14

    .line 652
    const/4 v15, 0x1

    .line 653
    new-instance v44, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v57, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move/from16 v2, v57

    move-object/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 654
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v57, v0

    move/from16 v0, v57

    move-object/from16 v1, v44

    iput v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v58, v0

    move-object/from16 v0, v57

    move/from16 v1, v58

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 657
    :cond_14
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->clear()V

    .line 660
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v57

    if-eqz v57, :cond_17

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v57

    if-nez v57, :cond_16

    .line 662
    const/4 v15, 0x1

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v57, v0

    move/from16 v0, v57

    move-object/from16 v1, v44

    iput v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mCurSeq:I

    .line 666
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mInteresting:Z

    .line 667
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 672
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v57, v0

    move/from16 v0, v57

    move-object/from16 v1, v44

    iput v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mRunningSeq:I

    .line 673
    move-object/from16 v0, v39

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 643
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_a

    .line 669
    :cond_17
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 678
    .end local v39           #pi:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 679
    .local v8, NRP:I
    const/16 v22, 0x0

    :goto_c
    move/from16 v0, v22

    if-ge v0, v8, :cond_1d

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 681
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mRunningSeq:I

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v58, v0

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_1c

    .line 682
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v17, v0

    .line 683
    .local v17, clientPid:I
    if-eqz v17, :cond_1b

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 685
    .local v16, client:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    if-nez v16, :cond_19

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #client:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    check-cast v16, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 688
    .restart local v16       #client:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_19
    if-eqz v16, :cond_1a

    .line 689
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v58, v0

    move-object/from16 v0, v57

    move/from16 v1, v58

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 697
    .end local v16           #client:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_1a
    :goto_d
    add-int/lit8 v22, v22, 0x1

    .line 698
    goto :goto_c

    .line 695
    :cond_1b
    const/16 v57, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mClient:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    goto :goto_d

    .line 699
    .end local v17           #clientPid:I
    :cond_1c
    const/4 v15, 0x1

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v58

    invoke-virtual/range {v57 .. v58}, Landroid/util/SparseArray;->remove(I)V

    .line 701
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_c

    .line 706
    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 707
    .local v6, NHP:I
    const/16 v22, 0x0

    :goto_e
    move/from16 v0, v22

    if-ge v0, v6, :cond_20

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 709
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mInteresting:Z

    move/from16 v57, v0

    if-eqz v57, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v57

    if-nez v57, :cond_1f

    .line 710
    :cond_1e
    const/4 v15, 0x1

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 712
    add-int/lit8 v22, v22, -0x1

    .line 713
    add-int/lit8 v6, v6, -0x1

    .line 707
    :cond_1f
    add-int/lit8 v22, v22, 0x1

    goto :goto_e

    .line 720
    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 721
    .local v5, NAP:I
    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v22

    if-ge v0, v5, :cond_22

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 723
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mCurSeq:I

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v58, v0

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_21

    .line 724
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v57, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move-object/from16 v2, v43

    move/from16 v3, v57

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v57

    or-int v15, v15, v57

    .line 721
    :cond_21
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 729
    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_22
    const/16 v56, 0x0

    .line 730
    .local v56, uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v22, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v57

    move/from16 v0, v22

    move/from16 v1, v57

    if-ge v0, v1, :cond_2a

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/util/HashMap;

    .line 732
    .restart local v46       #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    invoke-virtual/range {v46 .. v46}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .line 733
    .local v42, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    :cond_23
    :goto_11
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_29

    .line 734
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 735
    .local v39, pi:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    move-object/from16 v0, v39

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mCurSeq:I

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v58, v0

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_26

    .line 736
    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 737
    move-object/from16 v0, v39

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v57, v0

    if-nez v57, :cond_24

    .line 740
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->clear()V

    .line 756
    :cond_24
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v52

    .line 757
    .local v52, sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;>;"
    :cond_25
    :goto_12
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_23

    .line 758
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;

    .line 759
    .local v51, si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    move-object/from16 v0, v51

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mCurSeq:I

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v58, v0

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_25

    .line 760
    const/4 v15, 0x1

    .line 761
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 743
    .end local v51           #si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    .end local v52           #sit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;>;"
    :cond_26
    const/4 v15, 0x1

    .line 744
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->remove()V

    .line 745
    invoke-virtual/range {v46 .. v46}, Ljava/util/HashMap;->size()I

    move-result v57

    if-nez v57, :cond_28

    .line 746
    if-nez v56, :cond_27

    .line 747
    new-instance v56, Ljava/util/ArrayList;

    .end local v56           #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 749
    .restart local v56       #uidToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_28
    move-object/from16 v0, v39

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v57, v0

    if-eqz v57, :cond_23

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 730
    .end local v39           #pi:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_29
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_10

    .line 767
    .end local v42           #pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    .end local v46           #procs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    :cond_2a
    if-eqz v56, :cond_2b

    .line 768
    const/16 v22, 0x0

    :goto_13
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v57

    move/from16 v0, v22

    move/from16 v1, v57

    if-ge v0, v1, :cond_2b

    .line 769
    move-object/from16 v0, v56

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/Integer;

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v55

    .line 770
    .local v55, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 768
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    .line 774
    .end local v55           #uid:I
    :cond_2b
    if-eqz v15, :cond_3c

    .line 776
    new-instance v54, Ljava/util/ArrayList;

    invoke-direct/range {v54 .. v54}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v54, sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    const/16 v22, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v57

    move/from16 v0, v22

    move/from16 v1, v57

    if-ge v0, v1, :cond_30

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/util/HashMap;

    invoke-virtual/range {v57 .. v57}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_15
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_2f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 779
    .restart local v39       #pi:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mIsSystem:Z

    .line 780
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mIsStarted:Z

    .line 781
    const-wide v57, 0x7fffffffffffffffL

    move-wide/from16 v0, v57

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mActiveSince:J

    .line 782
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_16
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_2e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;

    .line 783
    .restart local v51       #si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v57, v0

    if-eqz v57, :cond_2d

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v57, v0

    and-int/lit8 v57, v57, 0x1

    if-eqz v57, :cond_2d

    .line 786
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mIsSystem:Z

    .line 788
    :cond_2d
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v57, v0

    if-eqz v57, :cond_2c

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v57, v0

    if-eqz v57, :cond_2c

    .line 790
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mIsStarted:Z

    .line 791
    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v57, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v59, v0

    move-object/from16 v0, v59

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v59, v0

    cmp-long v57, v57, v59

    if-lez v57, :cond_2c

    .line 792
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v57, v0

    move-wide/from16 v0, v57

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 796
    .end local v51           #si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    :cond_2e
    move-object/from16 v0, v54

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 777
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v39           #pi:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_2f
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_14

    .line 800
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessComparator:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceProcessComparator;

    move-object/from16 v57, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 802
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v33, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v34, newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->clear()V

    .line 805
    const/16 v22, 0x0

    :goto_17
    invoke-virtual/range {v54 .. v54}, Ljava/util/ArrayList;->size()I

    move-result v57

    move/from16 v0, v22

    move/from16 v1, v57

    if-ge v0, v1, :cond_38

    .line 806
    move-object/from16 v0, v54

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 807
    .restart local v39       #pi:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, v39

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mNeedDivider:Z

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 811
    .local v18, firstProc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 813
    move-object/from16 v0, v33

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    move-object/from16 v0, v39

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v57, v0

    if-lez v57, :cond_31

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    :cond_31
    const/16 v25, 0x0

    .line 820
    .local v25, mergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    const/16 v21, 0x0

    .line 821
    .local v21, haveAllMerged:Z
    const/16 v28, 0x0

    .line 822
    .local v28, needDivider:Z
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_34

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;

    .line 823
    .restart local v51       #si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    move/from16 v0, v28

    move-object/from16 v1, v51

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mNeedDivider:Z

    .line 824
    const/16 v28, 0x1

    .line 825
    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    move-object/from16 v57, v0

    if-eqz v57, :cond_33

    .line 827
    if-eqz v25, :cond_32

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    move-object/from16 v57, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v57

    if-eq v0, v1, :cond_32

    .line 828
    const/16 v21, 0x0

    .line 830
    :cond_32
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    move-object/from16 v25, v0

    goto :goto_18

    .line 832
    :cond_33
    const/16 v21, 0x0

    goto :goto_18

    .line 836
    .end local v51           #si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    :cond_34
    if-eqz v21, :cond_35

    if-eqz v25, :cond_35

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v57

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/HashMap;->size()I

    move-result v58

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_37

    .line 839
    :cond_35
    new-instance v25, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    .end local v25           #mergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    invoke-direct/range {v25 .. v25}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;-><init>()V

    .line 840
    .restart local v25       #mergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_19
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v57

    if-eqz v57, :cond_36

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;

    .line 841
    .restart local v51       #si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    move-object/from16 v0, v25

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    goto :goto_19

    .line 844
    .end local v51           #si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    :cond_36
    move-object/from16 v0, v39

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 845
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->clear()V

    .line 846
    move/from16 v27, v18

    .local v27, mpi:I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v57

    add-int/lit8 v57, v57, -0x1

    move/from16 v0, v27

    move/from16 v1, v57

    if-ge v0, v1, :cond_37

    .line 847
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    add-int/lit8 v27, v27, 0x1

    goto :goto_1a

    .line 851
    .end local v27           #mpi:I
    :cond_37
    const/16 v57, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 852
    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_17

    .line 857
    .end local v18           #firstProc:I
    .end local v21           #haveAllMerged:Z
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v25           #mergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    .end local v28           #needDivider:Z
    .end local v39           #pi:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 858
    const/16 v22, 0x0

    :goto_1b
    move/from16 v0, v22

    if-ge v0, v6, :cond_3b

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 860
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mClient:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    move-object/from16 v57, v0

    if-nez v57, :cond_3a

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/HashMap;->size()I

    move-result v57

    if-gtz v57, :cond_3a

    .line 861
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    move-object/from16 v57, v0

    if-nez v57, :cond_39

    .line 862
    new-instance v57, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    invoke-direct/range {v57 .. v57}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;-><init>()V

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    .line 863
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    move-object/from16 v57, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 865
    :cond_39
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p1

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 866
    const/16 v57, 0x0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    move-object/from16 v58, v0

    move-object/from16 v0, v34

    move/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    :cond_3a
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    .line 871
    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v58, v0

    monitor-enter v58

    .line 872
    :try_start_0
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mItems:Ljava/util/ArrayList;

    .line 873
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 874
    monitor-exit v58
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    .end local v33           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;>;"
    .end local v34           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .end local v54           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->clear()V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v58, v0

    invoke-virtual/range {v57 .. v58}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 881
    const/16 v35, 0x0

    .line 882
    .local v35, numBackgroundProcesses:I
    const/16 v36, 0x0

    .line 883
    .local v36, numForegroundProcesses:I
    const/16 v38, 0x0

    .line 884
    .local v38, numServiceProcesses:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 885
    const/16 v22, 0x0

    :goto_1c
    move/from16 v0, v22

    if-ge v0, v8, :cond_40

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 887
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mCurSeq:I

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v58, v0

    move/from16 v0, v57

    move/from16 v1, v58

    if-eq v0, v1, :cond_3f

    .line 890
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v57, v0

    const/16 v58, 0x190

    move/from16 v0, v57

    move/from16 v1, v58

    if-lt v0, v1, :cond_3d

    .line 892
    add-int/lit8 v35, v35, 0x1

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    :goto_1d
    add-int/lit8 v22, v22, 0x1

    goto :goto_1c

    .line 874
    .end local v35           #numBackgroundProcesses:I
    .end local v36           #numForegroundProcesses:I
    .end local v38           #numServiceProcesses:I
    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    .restart local v33       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;>;"
    .restart local v34       #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v54       #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    :catchall_0
    move-exception v57

    :try_start_1
    monitor-exit v58
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v57

    .line 894
    .end local v33           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;>;"
    .end local v34           #newMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .end local v54           #sortedProcesses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    .restart local v35       #numBackgroundProcesses:I
    .restart local v36       #numForegroundProcesses:I
    .restart local v38       #numServiceProcesses:I
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_3d
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v57, v0

    const/16 v58, 0xc8

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_3e

    .line 896
    add-int/lit8 v36, v36, 0x1

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 899
    :cond_3e
    const-string v57, "RunningState"

    new-instance v58, Ljava/lang/StringBuilder;

    invoke-direct/range {v58 .. v58}, Ljava/lang/StringBuilder;-><init>()V

    const-string v59, "Unknown non-service process: "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, " #"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 903
    :cond_3f
    add-int/lit8 v38, v38, 0x1

    goto :goto_1d

    .line 907
    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_40
    const-wide/16 v11, 0x0

    .line 908
    .local v11, backgroundProcessMemory:J
    const-wide/16 v19, 0x0

    .line 909
    .local v19, foregroundProcessMemory:J
    const-wide/16 v48, 0x0

    .line 910
    .local v48, serviceProcessMemory:J
    const/16 v29, 0x0

    .line 912
    .local v29, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v37

    .line 913
    .local v37, numProc:I
    move/from16 v0, v37

    new-array v0, v0, [J

    move-object/from16 v47, v0

    .line 914
    .local v47, pss:[J
    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v41, v0

    .line 915
    .local v41, pids:[I
    const/16 v22, 0x0

    :goto_1e
    move/from16 v0, v22

    move/from16 v1, v37

    if-ge v0, v1, :cond_41

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    move-object/from16 v0, v57

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    move/from16 v57, v0

    aput v57, v41, v22

    .line 915
    add-int/lit8 v22, v22, 0x1

    goto :goto_1e

    .line 918
    :cond_41
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v57

    if-eqz v57, :cond_43

    .line 919
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v47

    .line 930
    :cond_42
    const/4 v13, 0x0

    .line 931
    .local v13, bgIndex:I
    const/16 v22, 0x0

    move-object/from16 v30, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .local v30, newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    :goto_1f
    :try_start_3
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v22

    move/from16 v1, v57

    if-ge v0, v1, :cond_4a

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 933
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    aget-wide v57, v47, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v59, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p1

    move-wide/from16 v2, v57

    move/from16 v4, v59

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v57

    or-int v15, v15, v57

    .line 934
    move-object/from16 v0, v44

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mCurSeq:I

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mSequence:I

    move/from16 v58, v0

    move/from16 v0, v57

    move/from16 v1, v58

    if-ne v0, v1, :cond_44

    .line 935
    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mSize:J

    move-wide/from16 v57, v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    add-long v48, v48, v57

    move-object/from16 v29, v30

    .line 931
    .end local v30           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    :goto_20
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v30, v29

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v30       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    goto :goto_1f

    .line 922
    .end local v13           #bgIndex:I
    .end local v30           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    :cond_43
    :try_start_4
    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v26

    .line 923
    .local v26, mis:[Landroid/os/Debug$MemoryInfo;
    const/16 v22, 0x0

    :goto_21
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v22

    move/from16 v1, v57

    if-ge v0, v1, :cond_42

    .line 924
    aget-object v57, v26, v22

    invoke-virtual/range {v57 .. v57}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v57

    move/from16 v0, v57

    int-to-long v0, v0

    move-wide/from16 v57, v0

    aput-wide v57, v47, v22
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 923
    add-int/lit8 v22, v22, 0x1

    goto :goto_21

    .line 936
    .end local v26           #mis:[Landroid/os/Debug$MemoryInfo;
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v30       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_44
    :try_start_5
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v57, v0

    const/16 v58, 0x190

    move/from16 v0, v57

    move/from16 v1, v58

    if-lt v0, v1, :cond_49

    .line 938
    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mSize:J

    move-wide/from16 v57, v0

    add-long v11, v11, v57

    .line 945
    if-eqz v30, :cond_45

    .line 946
    new-instance v25, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    .line 947
    .restart local v25       #mergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    move-object/from16 v57, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 948
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v29, v30

    .line 963
    .end local v30           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    :goto_22
    const/16 v57, 0x1

    :try_start_6
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 964
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 965
    add-int/lit8 v13, v13, 0x1

    .line 966
    goto :goto_20

    .line 950
    .end local v25           #mergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v30       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    :cond_45
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v57

    move/from16 v0, v57

    if-ge v13, v0, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_48

    .line 952
    :cond_46
    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 953
    .end local v30           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    const/4 v14, 0x0

    .local v14, bgi:I
    :goto_23
    if-ge v14, v13, :cond_47

    .line 954
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v57

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    add-int/lit8 v14, v14, 0x1

    goto :goto_23

    .line 956
    :cond_47
    new-instance v25, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    invoke-direct/range {v25 .. v25}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    .line 957
    .restart local v25       #mergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    move-object/from16 v57, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 958
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_22

    .line 971
    .end local v13           #bgIndex:I
    .end local v14           #bgi:I
    .end local v25           #mergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    .end local v37           #numProc:I
    .end local v41           #pids:[I
    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    .end local v47           #pss:[J
    :catch_0
    move-exception v57

    .line 974
    :goto_24
    if-nez v29, :cond_4b

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v57

    move/from16 v0, v57

    move/from16 v1, v35

    if-le v0, v1, :cond_4b

    .line 977
    new-instance v29, Ljava/util/ArrayList;

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 978
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    const/4 v14, 0x0

    .restart local v14       #bgi:I
    :goto_25
    move/from16 v0, v35

    if-ge v14, v0, :cond_4b

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v57

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    add-int/lit8 v14, v14, 0x1

    goto :goto_25

    .line 960
    .end local v14           #bgi:I
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v30       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v37       #numProc:I
    .restart local v41       #pids:[I
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    .restart local v47       #pss:[J
    :cond_48
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    .restart local v25       #mergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    move-object/from16 v29, v30

    .end local v30           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    goto/16 :goto_22

    .line 966
    .end local v25           #mergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v30       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    :cond_49
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v57, v0

    const/16 v58, 0xc8

    move/from16 v0, v57

    move/from16 v1, v58

    if-gt v0, v1, :cond_4e

    .line 968
    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mSize:J

    move-wide/from16 v57, v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    add-long v19, v19, v57

    move-object/from16 v29, v30

    .end local v30           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    goto/16 :goto_20

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .end local v44           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    .restart local v30       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    :cond_4a
    move-object/from16 v29, v30

    .line 972
    .end local v30           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    goto :goto_24

    .line 984
    .end local v13           #bgIndex:I
    .end local v37           #numProc:I
    .end local v41           #pids:[I
    .end local v47           #pss:[J
    :cond_4b
    const/16 v22, 0x0

    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/ArrayList;->size()I

    move-result v57

    move/from16 v0, v22

    move/from16 v1, v57

    if-ge v0, v1, :cond_4c

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

    move-object/from16 v0, v57

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 984
    add-int/lit8 v22, v22, 0x1

    goto :goto_26

    .line 988
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->filterMergedItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v32

    .line 989
    .local v32, newFilteredMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->filterMergedItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v31

    .line 991
    .local v31, newFilteredBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v58, v0

    monitor-enter v58

    .line 992
    :try_start_a
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mNumBackgroundProcesses:I

    .line 993
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mNumForegroundProcesses:I

    .line 994
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mNumServiceProcesses:I

    .line 995
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mBackgroundProcessMemory:J

    .line 996
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mForegroundProcessMemory:J

    .line 997
    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mServiceProcessMemory:J

    .line 998
    if-eqz v29, :cond_4d

    .line 999
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1000
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mWatchingBackgroundItems:Z

    move/from16 v57, v0

    if-eqz v57, :cond_4d

    .line 1001
    const/4 v15, 0x1

    .line 1005
    :cond_4d
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mFilteredMergedItems:Ljava/util/ArrayList;

    .line 1006
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->mFilteredBackgroundItems:Ljava/util/ArrayList;

    .line 1012
    monitor-exit v58

    .line 1014
    return v15

    .line 1012
    :catchall_1
    move-exception v57

    monitor-exit v58
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v57

    .line 971
    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .end local v31           #newFilteredBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .end local v32           #newFilteredMergedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v13       #bgIndex:I
    .restart local v30       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v37       #numProc:I
    .restart local v41       #pids:[I
    .restart local v47       #pss:[J
    :catch_1
    move-exception v57

    move-object/from16 v29, v30

    .end local v30           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    goto/16 :goto_24

    .end local v29           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v30       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v44       #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_4e
    move-object/from16 v29, v30

    .end local v30           #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    .restart local v29       #newBackgroundItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;>;"
    goto/16 :goto_20
.end method
