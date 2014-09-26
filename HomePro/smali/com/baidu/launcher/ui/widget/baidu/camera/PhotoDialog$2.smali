.class Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$2;
.super Ljava/lang/Object;
.source "PhotoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhotoDAOManager:Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->access$100(Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->access$000(Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/PhotoDAOManager;->delete(Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)V

    .line 124
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->access$200(Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->mPhoto:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->access$000(Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;->delete(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)V

    .line 125
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->dismiss()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method
