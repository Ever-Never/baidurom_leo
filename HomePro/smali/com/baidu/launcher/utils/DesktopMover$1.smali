.class Lcom/baidu/launcher/utils/DesktopMover$1;
.super Landroid/os/Handler;
.source "DesktopMover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/utils/DesktopMover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/utils/DesktopMover;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/utils/DesktopMover;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$000(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 69
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$100(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$100(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$200(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c013b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/utils/DesktopMover;->showDialog(I)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$000(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 77
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$200(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0141

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$300(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getmHomeView()Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->onHomeViewDataChanged()V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$000(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$200(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0140

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$300(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getmHomeView()Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->onHomeViewDataChanged()V

    goto/16 :goto_0

    .line 86
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$000(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover$1;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/utils/DesktopMover;->access$200(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c013e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
