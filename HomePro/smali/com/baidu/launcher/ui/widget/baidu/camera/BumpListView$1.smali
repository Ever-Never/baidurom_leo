.class Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;
.super Ljava/lang/Object;
.source "BumpListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->addAllImages(Ljava/util/List;ILcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

.field final synthetic val$cameraWidget:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

.field final synthetic val$photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;->val$photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;->val$cameraWidget:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 138
    const-string v0, "BumpListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;->val$photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a004a

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;->val$photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;->val$cameraWidget:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;-><init>(Landroid/content/Context;ILcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mPhotoDialog:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->access$002(Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;)Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->mPhotoDialog:Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;->access$000(Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView;)Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/PhotoDialog;->show()V

    .line 141
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/BumpListView$1;->val$cameraWidget:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraAndHidePreview()V

    .line 142
    return-void
.end method
