.class Lcom/baidu/launcher/ui/homeview/CellLayout$4;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout;->onDropWidgetFromLauncher(Lcom/baidu/launcher/ui/dragdrop/DragView;Lcom/baidu/launcher/ui/dragdrop/DragLayer;Ljava/lang/Object;I[I[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field final synthetic val$screen:I

.field final synthetic val$targetXY:[I

.field final synthetic val$widgetInfo:Ljava/lang/Object;

.field final synthetic val$workspace:Lcom/baidu/launcher/ui/homeview/Workspace;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/homeview/Workspace;Ljava/lang/Object;I[I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$4;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$4;->val$workspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iput-object p3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$4;->val$widgetInfo:Ljava/lang/Object;

    iput p4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$4;->val$screen:I

    iput-object p5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$4;->val$targetXY:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$4;->val$workspace:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$4;->val$widgetInfo:Ljava/lang/Object;

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$4;->val$screen:I

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$4;->val$targetXY:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->addWidget(Ljava/lang/Object;I[I)V

    .line 1041
    return-void
.end method
