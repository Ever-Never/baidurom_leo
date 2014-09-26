.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
.super Ljava/lang/Object;
.source "CleanableAppInfo.java"


# instance fields
.field public activeSince:J

.field public isLocked:Z

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final packageInfo:Landroid/content/pm/ApplicationInfo;

.field public packageName:Ljava/lang/String;

.field public size:J


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->items:Ljava/util/ArrayList;

    .line 24
    iget-object v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageInfo:Landroid/content/pm/ApplicationInfo;

    .line 25
    iget-object v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->packageName:Ljava/lang/String;

    .line 26
    iget-object v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->label:Ljava/lang/String;

    .line 28
    iget-wide v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mActiveSince:J

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    .line 29
    iget-wide v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mSize:J

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->size:J

    .line 30
    iget-boolean v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mIsLocked:Z

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    .line 31
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method


# virtual methods
.method addItem(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const-wide/16 v4, 0x0

    .line 35
    iget-wide v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mActiveSince:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mActiveSince:J

    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    .line 36
    :cond_0
    iget-wide v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mActiveSince:J

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    .line 38
    :cond_1
    iget-wide v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 39
    iget-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->size:J

    iget-wide v2, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;->mSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->size:J

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method
