.class public Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;
.super Landroid/widget/FrameLayout;
.source "QuickLauncherWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->expandQuickLauncherLayer(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;)V

    .line 34
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->checkQuickIconDetachFromWindow(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;)V

    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 40
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 28
    invoke-virtual {p0, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method
