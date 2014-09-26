.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "AppRunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;)I
    .locals 6
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 434
    iget-boolean v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v3, p2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mIsStarted:Z

    if-eq v2, v3, :cond_2

    .line 436
    iget-boolean v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mIsStarted:Z

    if-eqz v2, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 436
    goto :goto_0

    .line 438
    :cond_2
    iget-boolean v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v3, p2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mIsSystem:Z

    if-eq v2, v3, :cond_4

    .line 440
    iget-boolean v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mIsSystem:Z

    if-eqz v2, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    .line 442
    :cond_4
    iget-wide v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 445
    iget-wide v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 447
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 432
    check-cast p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .end local p1
    check-cast p2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceProcessComparator;->compare(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;)I

    move-result v0

    return v0
.end method
