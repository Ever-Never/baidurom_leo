.class public Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "BaseAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/BaseAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 734
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 735
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 738
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 739
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 742
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/BaseAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 743
    return-void
.end method
