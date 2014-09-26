.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;
.super Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;
.source "AppRunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MergedItem"
.end annotation


# instance fields
.field public mIsLocked:Z

.field public final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field public mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

.field public final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;-><init>(Z)V

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 368
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mIsLocked:Z

    .line 374
    return-void
.end method


# virtual methods
.method update(Landroid/content/Context;Z)Z
    .locals 6
    .parameter "context"
    .parameter "background"

    .prologue
    .line 377
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    .line 378
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 379
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mLabel:Ljava/lang/String;

    .line 380
    iput-boolean p2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mBackground:Z

    .line 401
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mActiveSince:J

    .line 402
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;

    .line 404
    .local v1, si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    iget-wide v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mActiveSince:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mActiveSince:J

    iget-wide v4, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 405
    iget-wide v2, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mActiveSince:J

    iput-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mActiveSince:J

    .line 402
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    .end local v1           #si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method updateSize(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 414
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mProcess:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    iget-wide v2, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mSize:J

    iput-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mSize:J

    .line 415
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 416
    iget-wide v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mSize:J

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    iget-wide v5, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mSize:J

    add-long v2, v3, v5

    iput-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mSize:J

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_0
    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mSize:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, sizeStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 422
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mSizeStr:Ljava/lang/String;

    .line 428
    :cond_1
    return v7
.end method
