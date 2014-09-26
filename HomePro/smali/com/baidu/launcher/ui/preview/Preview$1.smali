.class Lcom/baidu/launcher/ui/preview/Preview$1;
.super Ljava/lang/Object;
.source "Preview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/preview/Preview;->buildUpAlertDialog(Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/preview/Preview;

.field final synthetic val$info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/preview/Preview;Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/baidu/launcher/ui/preview/Preview$1;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    iput-object p2, p0, Lcom/baidu/launcher/ui/preview/Preview$1;->val$info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview$1;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    #getter for: Lcom/baidu/launcher/ui/preview/Preview;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/ui/preview/Preview;->access$000(Lcom/baidu/launcher/ui/preview/Preview;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/preview/Preview$1;->val$info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    iget v1, v1, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    iget-object v2, p0, Lcom/baidu/launcher/ui/preview/Preview$1;->val$info:Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;

    iget v2, v2, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeViewFromPreview(II)V

    .line 461
    return-void
.end method
