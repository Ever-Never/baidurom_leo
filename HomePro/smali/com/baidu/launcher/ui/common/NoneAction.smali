.class public Lcom/baidu/launcher/ui/common/NoneAction;
.super Ljava/lang/Object;
.source "NoneAction.java"

# interfaces
.implements Lcom/baidu/launcher/ui/common/DecorateAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 0
    .parameter "canvas"
    .parameter "view"

    .prologue
    .line 17
    return-void
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEventCheck(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 34
    return-void
.end method

.method public updateEventNumber(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 28
    return-void
.end method
