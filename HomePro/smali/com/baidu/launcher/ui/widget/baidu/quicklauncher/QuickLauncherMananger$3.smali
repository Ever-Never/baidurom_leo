.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$3;
.super Ljava/lang/Object;
.source "QuickLauncherMananger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->expandQuickLauncherLayer(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->closeQuickLauncherLayer(Landroid/content/Context;)V

    .line 316
    return-void
.end method
