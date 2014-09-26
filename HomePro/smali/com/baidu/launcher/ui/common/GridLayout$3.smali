.class final Lcom/baidu/launcher/ui/common/GridLayout$3;
.super Lcom/baidu/launcher/ui/common/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2356
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;I)I
    .locals 0
    .parameter "view"
    .parameter "viewSize"

    .prologue
    .line 2358
    return p2
.end method
