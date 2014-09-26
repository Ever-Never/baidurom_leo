.class public Lcom/baidu/launcher/thememanager/ui/BaseFragment;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->getProcessMananager(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->addActivityTask(Landroid/app/Activity;)V

    .line 15
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 21
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->getProcessMananager(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->removeActivityTask(Landroid/app/Activity;)V

    .line 22
    return-void
.end method
