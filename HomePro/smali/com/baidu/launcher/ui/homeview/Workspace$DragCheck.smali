.class Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DragCheck"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 3050
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3053
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mCurrentScreen:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$700(Lcom/baidu/launcher/ui/homeview/Workspace;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3054
    .local v0, current:Lcom/baidu/launcher/ui/homeview/CellLayout;
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$DragCheck;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getTag()Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->startDrag(Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;)V

    .line 3055
    return-void
.end method
