.class Lcom/baidu/launcher/ui/homeview/DockBar$2;
.super Ljava/lang/Object;
.source "DockBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/DockBar;->onDropCompleted(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/DockBar;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/DockBar;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$2;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    .line 563
    sput-boolean v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    .line 564
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$2;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "show_dockbar_applist_icon"

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 566
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$2;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    #getter for: Lcom/baidu/launcher/ui/homeview/DockBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$100(Lcom/baidu/launcher/ui/homeview/DockBar;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$2;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    #getter for: Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$000(Lcom/baidu/launcher/ui/homeview/DockBar;)Lcom/baidu/launcher/ui/homeview/DockBarItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/HomeDataManager;->deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 568
    return-void
.end method
