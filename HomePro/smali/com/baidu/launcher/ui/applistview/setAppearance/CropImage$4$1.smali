.class Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 318
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;

    #calls: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->makeDefault()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->access$900(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;)V

    .line 320
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->requestLayout()V

    .line 321
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 322
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;

    iget-object v1, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mImageView:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->access$200(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;)Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImageView;->HighlightViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    iput-object v0, v1, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mCrop:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    .line 323
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4$1;->this$1:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$4;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;->mCrop:Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/HighlightView;->setFocus(Z)V

    .line 325
    :cond_0
    return-void
.end method
