.class public final Lcom/baidu/launcher/utils/EventNumberUtil;
.super Landroid/database/ContentObserver;
.source "EventNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    }
.end annotation


# static fields
.field private static final MSG_EVENT_NUMBER_CALL:I = 0x1

.field private static final MSG_EVENT_NUMBER_EMAIL:I = 0x3

.field private static final MSG_EVENT_NUMBER_MSG:I = 0x2

.field public static final TAG:Ljava/lang/String; = "EventNumberUtil"

.field private static mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;


# instance fields
.field private mComponentNameList:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEventNumberInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mEventNumberViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/launcher/app/Launcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 47
    new-instance v0, Lcom/baidu/launcher/utils/EventNumberUtil$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/utils/EventNumberUtil$1;-><init>(Lcom/baidu/launcher/utils/EventNumberUtil;)V

    iput-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberViews:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/utils/EventNumberUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/utils/EventNumberUtil;->handleMsgCall()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/utils/EventNumberUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/utils/EventNumberUtil;->handleEmailMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/utils/EventNumberUtil;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/utils/EventNumberUtil;->handleMsgMessage()V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/utils/EventNumberUtil;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/utils/EventNumberUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/utils/EventNumberUtil;->getUnreadMsg()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/utils/EventNumberUtil;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/utils/EventNumberUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/utils/EventNumberUtil;->getUnreadEmailCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/utils/EventNumberUtil;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/utils/EventNumberUtil;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/launcher/utils/EventNumberUtil;->getMissedCallCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getFolderEventNumber(Lcom/baidu/launcher/data/item/IFolderInfo;Ljava/util/ArrayList;)I
    .locals 13
    .parameter "mInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/data/item/IFolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, eventNumerInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;>;"
    if-nez p0, :cond_1

    .line 479
    const/4 v8, 0x0

    .line 540
    :cond_0
    :goto_0
    return v8

    .line 480
    :cond_1
    invoke-interface {p0}, Lcom/baidu/launcher/data/item/IFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 481
    .local v0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Lcom/baidu/launcher/data/item/BaseItemInfo;>;"
    const-string v2, ""

    .line 482
    .local v2, componentName:Ljava/lang/String;
    const-string v11, ""

    .line 483
    .local v11, title:Ljava/lang/String;
    if-eqz p1, :cond_8

    .line 484
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 485
    .local v9, shortcutInfo:Lcom/baidu/launcher/data/item/BaseItemInfo;
    const-string v2, ""

    .line 486
    const-string v11, ""

    .line 487
    instance-of v12, v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v12, :cond_7

    move-object v12, v9

    .line 488
    check-cast v12, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v12, v12, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v12, :cond_2

    move-object v12, v9

    .line 494
    check-cast v12, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v12, v12, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v12, :cond_3

    move-object v12, v9

    .line 495
    check-cast v12, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v12, v12, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 496
    .local v1, component:Landroid/content/ComponentName;
    if-eqz v1, :cond_6

    .line 497
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 502
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_3
    :goto_1
    iget-object v12, v9, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 518
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;

    .line 519
    .local v3, eventInfo:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    iget-object v12, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 522
    :cond_5
    iget v12, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mEventCount:I

    iput v12, v9, Lcom/baidu/launcher/data/item/BaseItemInfo;->eventCount:I

    .line 523
    iget-object v12, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mIntent:Landroid/content/Intent;

    iput-object v12, v9, Lcom/baidu/launcher/data/item/BaseItemInfo;->replacedIntent:Landroid/content/Intent;

    goto :goto_3

    .line 499
    .end local v3           #eventInfo:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    .end local v6           #i$:Ljava/util/Iterator;
    .restart local v1       #component:Landroid/content/ComponentName;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 504
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_7
    instance-of v12, v9, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v12, :cond_2

    move-object v12, v9

    .line 505
    check-cast v12, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v12, v12, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    if-eqz v12, :cond_2

    move-object v12, v9

    .line 508
    check-cast v12, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v12, v12, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object v12, v9

    .line 511
    check-cast v12, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v12, v12, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 513
    iget-object v12, v9, Lcom/baidu/launcher/data/item/BaseItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 529
    .end local v9           #shortcutInfo:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_8
    const/4 v8, 0x0

    .line 530
    .local v8, number:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 531
    .local v10, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v10, :cond_0

    .line 532
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 533
    .local v7, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    iget v12, v7, Lcom/baidu/launcher/data/item/BaseItemInfo;->eventCount:I

    if-gez v12, :cond_9

    .line 534
    iget v8, v7, Lcom/baidu/launcher/data/item/BaseItemInfo;->eventCount:I

    .line 535
    goto/16 :goto_0

    .line 537
    :cond_9
    iget v12, v7, Lcom/baidu/launcher/data/item/BaseItemInfo;->eventCount:I

    add-int/2addr v8, v12

    .line 531
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;
    .locals 2

    .prologue
    .line 142
    const-class v1, Lcom/baidu/launcher/utils/EventNumberUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/baidu/launcher/utils/EventNumberUtil;

    invoke-direct {v0}, Lcom/baidu/launcher/utils/EventNumberUtil;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;

    .line 145
    :cond_0
    sget-object v0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getListFolderEventNumber(Lcom/baidu/launcher/data/item/ListFolderInfo;Ljava/util/ArrayList;)I
    .locals 12
    .parameter "mInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/launcher/data/item/ListFolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, eventNumerInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;>;"
    if-nez p0, :cond_1

    .line 546
    const/4 v8, 0x0

    .line 580
    :cond_0
    :goto_0
    return v8

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 548
    .local v1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    if-eqz p1, :cond_5

    .line 549
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 550
    .local v0, appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v11, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_2

    .line 553
    iget-object v11, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 556
    iget-object v11, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, componentName:Ljava/lang/String;
    iget-object v11, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 559
    .local v10, title:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;

    .line 560
    .local v3, eventInfo:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    iget-object v11, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 562
    :cond_4
    iget v11, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mEventCount:I

    iput v11, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->eventCount:I

    .line 563
    iget-object v11, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mIntent:Landroid/content/Intent;

    iput-object v11, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->replacedIntent:Landroid/content/Intent;

    goto :goto_1

    .line 569
    .end local v0           #appInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v2           #componentName:Ljava/lang/String;
    .end local v3           #eventInfo:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #title:Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    .line 570
    .local v8, number:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 571
    .local v9, size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v9, :cond_0

    .line 572
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 573
    .local v7, item:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget v11, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->eventCount:I

    if-gez v11, :cond_6

    .line 574
    iget v8, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->eventCount:I

    .line 575
    goto :goto_0

    .line 577
    :cond_6
    iget v11, v7, Lcom/baidu/launcher/data/item/ListAppInfo;->eventCount:I

    add-int/2addr v8, v11

    .line 571
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private declared-synchronized getMissedCallCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 366
    monitor-enter p0

    const/4 v8, 0x0

    .line 367
    .local v8, missedCallCount:I
    const/4 v6, 0x0

    .line 372
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "%s = ? AND (%s = ? OR %s = ?)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v5, "type"

    aput-object v5, v1, v2

    const/4 v2, 0x1

    const-string v5, "is_read"

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string v5, "is_read"

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "0"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "NULL"

    aput-object v1, v4, v0

    .line 376
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "number"

    aput-object v9, v2, v5

    const/4 v5, 0x1

    const-string v9, "type"

    aput-object v9, v2, v5

    const/4 v5, 0x2

    const-string v9, "new"

    aput-object v9, v2, v5

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 380
    if-eqz v6, :cond_0

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 386
    :cond_0
    if-eqz v6, :cond_1

    .line 387
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return v8

    .line 383
    :catch_0
    move-exception v7

    .line 384
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "EventNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMissedCallCount():Error happens in -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 386
    if-eqz v6, :cond_1

    .line 387
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 366
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 386
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 387
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized getUnreadEmailCount()I
    .locals 10

    .prologue
    .line 436
    monitor-enter p0

    const/4 v8, 0x0

    .line 437
    .local v8, unreadEmailCount:I
    const/4 v6, 0x0

    .line 440
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 442
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "flagRead=? and mailboxKey!=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "0"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string v9, "5"

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 445
    if-eqz v6, :cond_0

    .line 446
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 447
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    const/4 v6, 0x0

    .line 453
    :cond_0
    if-eqz v6, :cond_1

    .line 454
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    monitor-exit p0

    return v8

    .line 450
    :catch_0
    move-exception v7

    .line 451
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "EventNumberUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUnreadEmail():Error happens in -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 453
    if-eqz v6, :cond_1

    .line 454
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 436
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 453
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 454
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized getUnreadMsg()I
    .locals 10

    .prologue
    .line 395
    monitor-enter p0

    const/4 v8, 0x0

    .line 396
    .local v8, unreadMsgCount:I
    const/4 v6, 0x0

    .line 399
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 402
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "read=0 AND type=1 AND thread_id IN (SELECT _id FROM threads)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 405
    if-eqz v6, :cond_0

    .line 406
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 408
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 409
    const/4 v6, 0x0

    .line 412
    :cond_0
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 415
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "read=? AND m_type=? AND thread_id IN (SELECT _id FROM threads)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "0"

    aput-object v9, v4, v5

    const/4 v5, 0x1

    const-string v9, "132"

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 418
    if-eqz v6, :cond_1

    .line 419
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v8, v0

    .line 421
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    const/4 v6, 0x0

    .line 428
    :cond_1
    if-eqz v6, :cond_2

    .line 429
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    :goto_0
    monitor-exit p0

    return v8

    .line 425
    :catch_0
    move-exception v7

    .line 426
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "EventNumberUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUnreadSmsCount():Error happens in -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 428
    if-eqz v6, :cond_2

    .line 429
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 395
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 428
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_3

    .line 429
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private handleEmailMessage()V
    .locals 3

    .prologue
    .line 123
    const-string v0, "EventNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEmailMessage EMAIL_EVENT_NUMBER_EMAIL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/baidu/launcher/utils/EventNumberUtil$3;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/utils/EventNumberUtil$3;-><init>(Lcom/baidu/launcher/utils/EventNumberUtil;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/utils/EventNumberUtil$3;->start()V

    .line 132
    return-void
.end method

.method private handleMsgCall()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 99
    const-string v3, "EventNumberUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage MSG_EVENT_NUMBER_CALL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;

    .line 101
    .local v0, callInfo:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    const/4 v1, 0x0

    .line 102
    .local v1, intent:Landroid/content/Intent;
    iget v3, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mEventCount:I

    if-lez v3, :cond_1

    .line 103
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v1       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 105
    const-string v3, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v3, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 108
    :cond_0
    const/4 v1, 0x0

    .line 111
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    iput-object v1, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mIntent:Landroid/content/Intent;

    .line 112
    new-instance v3, Lcom/baidu/launcher/utils/EventNumberUtil$2;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/utils/EventNumberUtil$2;-><init>(Lcom/baidu/launcher/utils/EventNumberUtil;)V

    invoke-virtual {v3}, Lcom/baidu/launcher/utils/EventNumberUtil$2;->start()V

    .line 120
    return-void
.end method

.method private handleMsgMessage()V
    .locals 3

    .prologue
    .line 135
    const-string v0, "EventNumberUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage MSG_EVENT_NUMBER_MSG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/baidu/launcher/utils/EventNumberUtil;->updateActionViews()V

    .line 137
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/utils/EventNumberUtil;->updateFolderEventNumber(Ljava/util/ArrayList;)V

    .line 138
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->updateEventNumber()V

    .line 139
    return-void
.end method

.method private initEventNumberInfoList()V
    .locals 4

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/EventNumberUtil;->initComponentNameList()V

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;

    .line 254
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 255
    new-instance v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;

    invoke-direct {v0}, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;-><init>()V

    .line 256
    .local v0, e:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mComponentName:Ljava/lang/String;

    .line 257
    const/4 v2, 0x0

    iput v2, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mEventCount:I

    .line 258
    packed-switch v1, :pswitch_data_0

    .line 269
    :goto_1
    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0071

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 263
    :pswitch_1
    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0070

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 266
    :pswitch_2
    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 272
    .end local v0           #e:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    :cond_0
    return-void

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateActionViews()V
    .locals 4

    .prologue
    .line 350
    iget-object v3, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 352
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    if-eqz v3, :cond_1

    .line 353
    check-cast v2, Lcom/baidu/launcher/ui/homeview/DockBarItem;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v1

    .line 357
    :goto_1
    instance-of v3, v1, Lcom/baidu/launcher/data/item/BaseItemInfo;

    if-eqz v3, :cond_0

    .line 358
    check-cast v1, Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    goto :goto_0

    .line 355
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .local v1, tag:Ljava/lang/Object;
    goto :goto_1

    .line 361
    .end local v1           #tag:Ljava/lang/Object;
    .end local v2           #v:Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z
    .locals 12
    .parameter "info"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, component:Landroid/content/ComponentName;
    const-string v1, ""

    .line 303
    .local v1, componentName:Ljava/lang/String;
    const-string v7, ""

    .line 304
    .local v7, title:Ljava/lang/String;
    instance-of v8, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v8, :cond_5

    move-object v8, p1

    .line 305
    check-cast v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v8, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_0

    move-object v8, p1

    .line 306
    check-cast v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v8, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v8, p1

    .line 311
    check-cast v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v8, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v8, :cond_1

    move-object v8, p1

    .line 312
    check-cast v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v8, v8, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 335
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;

    .line 336
    .local v3, eventInfo:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    iget-object v8, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 337
    :cond_3
    iget v2, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mEventCount:I

    .line 338
    .local v2, count:I
    instance-of v8, p1, Lcom/baidu/launcher/data/item/BaseItemInfo;

    if-eqz v8, :cond_4

    .line 339
    move-object v5, p1

    .line 340
    .local v5, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    iput v2, v5, Lcom/baidu/launcher/data/item/BaseItemInfo;->eventCount:I

    .line 341
    iget-object v8, v3, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mIntent:Landroid/content/Intent;

    iput-object v8, v5, Lcom/baidu/launcher/data/item/BaseItemInfo;->replacedIntent:Landroid/content/Intent;

    .end local v5           #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_4
    move v8, v9

    .line 346
    .end local v2           #count:I
    .end local v3           #eventInfo:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :goto_1
    return v8

    .line 314
    :cond_5
    instance-of v8, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v8, :cond_7

    move-object v8, p1

    .line 315
    check-cast v8, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v8, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_6

    move-object v8, p1

    .line 316
    check-cast v8, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v8, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_6

    .line 318
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    move-object v8, p1

    .line 321
    check-cast v8, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v8, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    if-eqz v8, :cond_1

    move-object v8, p1

    .line 322
    check-cast v8, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v8, v8, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 324
    :cond_7
    instance-of v8, p1, Lcom/baidu/launcher/data/item/IFolderInfo;

    if-eqz v8, :cond_9

    move-object v8, p1

    .line 325
    check-cast v8, Lcom/baidu/launcher/data/item/IFolderInfo;

    iget-object v11, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;

    invoke-static {v8, v11}, Lcom/baidu/launcher/utils/EventNumberUtil;->getFolderEventNumber(Lcom/baidu/launcher/data/item/IFolderInfo;Ljava/util/ArrayList;)I

    move-result v6

    .line 326
    .local v6, number:I
    iput v6, p1, Lcom/baidu/launcher/data/item/BaseItemInfo;->eventCount:I

    .line 327
    if-lez v6, :cond_8

    move v8, v9

    .line 328
    goto :goto_1

    :cond_8
    move v8, v10

    .line 330
    goto :goto_1

    .end local v6           #number:I
    :cond_9
    move v8, v10

    .line 333
    goto :goto_1

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_a
    move v8, v10

    .line 346
    goto :goto_1
.end method

.method public getComponentNameList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    return-object v0
.end method

.method public getEventNumberInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEventNumberViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNewEventNumberInfo()Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    .locals 1

    .prologue
    .line 469
    new-instance v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;

    invoke-direct {v0}, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;-><init>()V

    return-object v0
.end method

.method public initComponentNameList()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x1

    const/4 v6, 0x0

    .line 201
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    .line 202
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 204
    .local v0, allActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 205
    .local v1, cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 208
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 209
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cn:Landroid/content/ComponentName;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .restart local v1       #cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 219
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v4, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 224
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 225
    .restart local v3       #resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cn:Landroid/content/ComponentName;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .restart local v1       #cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 235
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.APP_EMAIL"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v4, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 240
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 241
    .restart local v3       #resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cn:Landroid/content/ComponentName;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .restart local v1       #cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 249
    .end local v3           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_2
    return-void

    .line 215
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    const-string v5, "com.android.contacts/.activities.DialtactsActivity"

    aput-object v5, v4, v6

    goto :goto_0

    .line 231
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    const-string v5, "com.android.mms/.ui.ConversationList"

    aput-object v5, v4, v8

    goto :goto_1

    .line 247
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    const-string v5, "com.android.email/.activities.Welcome"

    aput-object v5, v4, v9

    goto :goto_2
.end method

.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 281
    iget-object v1, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    .line 285
    .local v0, launcher:Lcom/baidu/launcher/app/Launcher;
    if-eqz v0, :cond_0

    .line 286
    new-instance v1, Lcom/baidu/launcher/utils/EventNumberUtil$4;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/utils/EventNumberUtil$4;-><init>(Lcom/baidu/launcher/utils/EventNumberUtil;)V

    invoke-virtual {v1}, Lcom/baidu/launcher/utils/EventNumberUtil$4;->start()V

    goto :goto_0
.end method

.method public refreshTitleId()V
    .locals 5

    .prologue
    .line 187
    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 188
    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;

    .line 189
    .local v0, e:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    iget-object v2, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mComponentName:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0071

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 191
    :cond_1
    iget-object v2, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mComponentName:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0070

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_2
    iget-object v2, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mComponentName:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mComponentNameList:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 198
    .end local v0           #e:Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public registerView(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLauncher(Lcom/baidu/launcher/app/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 180
    invoke-virtual {p1}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/EventNumberUtil;->initComponentNameList()V

    .line 182
    invoke-direct {p0}, Lcom/baidu/launcher/utils/EventNumberUtil;->initEventNumberInfoList()V

    .line 183
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    return-void
.end method

.method public unregisterAppViews()V
    .locals 4

    .prologue
    .line 584
    iget-object v3, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 585
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 586
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 587
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 588
    .local v1, info:Ljava/lang/Object;
    instance-of v3, v1, Lcom/baidu/launcher/data/item/ListItemInfo;

    if-eqz v3, :cond_0

    .line 589
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 592
    .end local v1           #info:Ljava/lang/Object;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public unregisterFolderViews()V
    .locals 7

    .prologue
    .line 595
    iget-object v5, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 596
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 597
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 598
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 599
    .local v3, info:Ljava/lang/Object;
    instance-of v5, v3, Lcom/baidu/launcher/data/item/BaseItemInfo;

    if-eqz v5, :cond_0

    .line 600
    check-cast v3, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .end local v3           #info:Ljava/lang/Object;
    iget-wide v0, v3, Lcom/baidu/launcher/data/item/BaseItemInfo;->container:J

    .line 601
    .local v0, container:J
    const-wide/16 v5, -0x64

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    const-wide/16 v5, -0xc8

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    const-wide/16 v5, -0x3e8

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    .line 604
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 608
    .end local v0           #container:J
    .end local v4           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public unregisterView(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mEventNumberViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterViewGroup(Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "viewGroup"

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/utils/EventNumberUtil;->unregisterView(Landroid/view/View;)Z

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public updateFolderEventNumber(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, eventNumberInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;>;"
    iget-object v9, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/app/Launcher;

    .line 612
    .local v5, launcher:Lcom/baidu/launcher/app/Launcher;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v9

    if-nez v9, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-virtual {v5}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v8

    .line 614
    .local v8, workspaces:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-virtual {v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v7

    .line 615
    .local v7, screen:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_4

    .line 616
    invoke-virtual {v8, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 617
    .local v6, layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    invoke-virtual {v6}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v1

    .line 618
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v1, :cond_3

    .line 619
    invoke-virtual {v6, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 620
    .local v0, cell:Landroid/view/View;
    instance-of v9, v0, Lcom/baidu/launcher/ui/folder/FolderIcon;

    if-eqz v9, :cond_2

    move-object v2, v0

    .line 621
    check-cast v2, Lcom/baidu/launcher/ui/folder/FolderIcon;

    .line 622
    .local v2, fi:Lcom/baidu/launcher/ui/folder/FolderIcon;
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {p0, v9}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 623
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    .line 618
    .end local v2           #fi:Lcom/baidu/launcher/ui/folder/FolderIcon;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 615
    .end local v0           #cell:Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 628
    .end local v1           #count:I
    .end local v4           #j:I
    .end local v6           #layout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    :cond_4
    iget-object v9, p0, Lcom/baidu/launcher/utils/EventNumberUtil;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v9}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/logic/ViewManager;->getmHomeView()Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v9

    iget-object v9, v9, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/homeview/DockBar;->updateFolderEventNumber()V

    goto :goto_0
.end method
