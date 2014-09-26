.class public Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/dragdrop/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1076
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1070
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->customPosition:Z

    .line 1077
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 1092
    iget v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 1088
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->height:I

    .line 1089
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 1080
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->width:I

    .line 1081
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 1096
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->x:I

    .line 1097
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 1104
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$LayoutParams;->y:I

    .line 1105
    return-void
.end method
