.class Lcom/baidu/launcher/ui/homeview/HomeView$9;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;->updateHomeData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

.field final synthetic val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$9;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$9;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1426
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$9;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget v1, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 1440
    :cond_0
    :goto_0
    return-void

    .line 1429
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$9;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    check-cast v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 1430
    .local v0, shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-wide v1, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->container:J

    const-wide/16 v3, -0xc8

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1433
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$9;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateShortcuts(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)V

    goto :goto_0

    .line 1437
    .end local v0           #shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$9;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$9;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    check-cast v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-virtual {v2, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateFolders(Lcom/baidu/launcher/data/item/HomeFolderInfo;)V

    goto :goto_0

    .line 1426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
