.class Lcom/baidu/launcher/ui/homeview/Workspace$3;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;->onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

.field final synthetic val$cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field final synthetic val$hostView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

.field final synthetic val$info:Lcom/baidu/launcher/data/item/HomeItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;Lcom/baidu/launcher/ui/homeview/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1898
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$3;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$3;->val$info:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iput-object p3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$3;->val$hostView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    iput-object p4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$3;->val$cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1900
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$3;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$100(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    .line 1901
    .local v0, dragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$3;->val$info:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$3;->val$hostView:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$3;->val$cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->addResizeFrame(Lcom/baidu/launcher/data/item/HomeItemInfo;Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHostView;Lcom/baidu/launcher/ui/homeview/CellLayout;)V

    .line 1902
    return-void
.end method
