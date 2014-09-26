.class public Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;
.super Lcom/baidu/launcher/ui/common/ActionTextView;
.source "QuickLauncherView.java"


# instance fields
.field private mAngle:F

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/common/ActionTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->mAngle:F

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->mPosition:I

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->whetherDrawEvent:Z

    .line 45
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/ActionTextView;->draw(Landroid/graphics/Canvas;)V

    .line 46
    return-void
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->mAngle:F

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->mPosition:I

    return v0
.end method

.method public setAngle(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 19
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->mAngle:F

    .line 20
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 27
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherView;->mPosition:I

    .line 28
    return-void
.end method
