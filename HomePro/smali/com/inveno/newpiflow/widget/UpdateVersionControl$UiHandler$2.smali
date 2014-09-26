.class Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler$2;
.super Ljava/lang/Object;
.source "UpdateVersionControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler$2;->this$1:Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler$2;->this$1:Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;

    iget-object v0, v0, Lcom/inveno/newpiflow/widget/UpdateVersionControl$UiHandler;->this$0:Lcom/inveno/newpiflow/widget/UpdateVersionControl;

    #getter for: Lcom/inveno/newpiflow/widget/UpdateVersionControl;->noticeCheckDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/UpdateVersionControl;->access$300(Lcom/inveno/newpiflow/widget/UpdateVersionControl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    return-void
.end method
