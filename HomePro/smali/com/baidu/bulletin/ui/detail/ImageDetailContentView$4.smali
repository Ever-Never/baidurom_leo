.class Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$4;
.super Ljava/lang/Object;
.source "ImageDetailContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$4;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$4;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$4;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$200(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$4;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mGallery:Lcom/baidu/bulletin/ui/detail/ImageGallery;
    invoke-static {v2}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$100(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/ImageGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->getCurrentItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->get(I)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/detail/DetailShare;->showSharedDialog(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 228
    return-void
.end method
