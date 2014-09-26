.class Lcom/baidu/launcher/utils/DesktopMover$5$1;
.super Ljava/lang/Object;
.source "DesktopMover.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/utils/DesktopMover$5;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/utils/DesktopMover$5;

.field final synthetic val$select:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/utils/DesktopMover$5;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1;->this$1:Lcom/baidu/launcher/utils/DesktopMover$5;

    iput p2, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1;->val$select:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1;->this$1:Lcom/baidu/launcher/utils/DesktopMover$5;

    iget-object v0, v0, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/utils/DesktopMover;->showDialog(I)V

    .line 526
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/launcher/utils/DesktopMover$5$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/utils/DesktopMover$5$1$1;-><init>(Lcom/baidu/launcher/utils/DesktopMover$5$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 554
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$5$1;->this$1:Lcom/baidu/launcher/utils/DesktopMover$5;

    iget-object v0, v0, Lcom/baidu/launcher/utils/DesktopMover$5;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$700(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 555
    return-void
.end method
