.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;
.super Ljava/lang/Object;
.source "WrapperConvenientOptimization.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MergedItemWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;)V
    .locals 1
    .parameter
    .parameter "item"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    .line 69
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    .line 70
    return-void
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;)I
    .locals 7
    .parameter "another"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 79
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-boolean v3, v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-boolean v3, v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-boolean v3, v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-boolean v3, v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    if-nez v3, :cond_5

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-wide v3, v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    iget-object v5, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-wide v5, v5, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 95
    :cond_2
    :goto_0
    return v0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-wide v3, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    iget-object v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-wide v5, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->activeSince:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    move v0, v1

    .line 85
    goto :goto_0

    :cond_4
    move v0, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_5
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-boolean v3, v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    if-nez v3, :cond_2

    .line 91
    iget-object v0, p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;->isLocked:Z

    if-eqz v0, :cond_6

    move v0, v1

    .line 93
    goto :goto_0

    :cond_6
    move v0, v2

    .line 95
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->compareTo(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;)I

    move-result v0

    return v0
.end method

.method public getMergedItem()Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    return-object v0
.end method
