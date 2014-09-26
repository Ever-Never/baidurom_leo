.class Lcom/baidu/launcher/app/Launcher$MenuOnClickListener$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener$1;->this$1:Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener$1;->this$1:Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView;->enterDisableApps()V

    .line 1475
    return-void
.end method
