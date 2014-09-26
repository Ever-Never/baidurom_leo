.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CenterTabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->access$000(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->onCenterTabClick(Landroid/view/MotionEvent;)V

    .line 38
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
