.class public Lcom/baidu/launcher/ui/folder/FolderContainer;
.super Landroid/widget/LinearLayout;
.source "FolderContainer.java"


# instance fields
.field protected mAlphaforLowApi:F

.field protected mPivotXforLowApi:F

.field protected mPivotYforLowApi:F

.field protected mScaleXforLowApi:F

.field protected mScaleYforLowApi:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 32
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/folder/FolderContainer;->mAlphaforLowApi:F

    goto :goto_0
.end method

.method public setPivotX(F)V
    .locals 1
    .parameter "pivotX"

    .prologue
    .line 56
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/folder/FolderContainer;->mPivotXforLowApi:F

    goto :goto_0
.end method

.method public setPivotY(F)V
    .locals 1
    .parameter "pivotY"

    .prologue
    .line 64
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/folder/FolderContainer;->mPivotYforLowApi:F

    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 1
    .parameter "scaleX"

    .prologue
    .line 40
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/folder/FolderContainer;->mScaleXforLowApi:F

    goto :goto_0
.end method

.method public setScaleY(F)V
    .locals 1
    .parameter "scaleY"

    .prologue
    .line 48
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/folder/FolderContainer;->mScaleYforLowApi:F

    goto :goto_0
.end method
