.class public abstract Lcom/baidu/launcher/ui/common/GridLayout$Alignment;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Alignment"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2306
    return-void
.end method


# virtual methods
.method abstract getAlignmentValue(Landroid/view/View;I)I
.end method

.method getBounds()Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
    .locals 2

    .prologue
    .line 2340
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;-><init>(Lcom/baidu/launcher/ui/common/GridLayout$1;)V

    return-object v0
.end method

.method getSizeInCell(Landroid/view/View;III)I
    .locals 0
    .parameter "view"
    .parameter "viewSize"
    .parameter "cellSize"
    .parameter "measurementType"

    .prologue
    .line 2336
    return p2
.end method
