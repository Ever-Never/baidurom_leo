.class Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;
.super Ljava/lang/Object;
.source "ChannelListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->this$1:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1093
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v1, :cond_0

    .line 1095
    const-string v1, "pp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test bitmap width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", imgurl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->this$1:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    #getter for: Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->access$200(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->this$1:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    iget-object v2, v2, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->val$imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    #calls: Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->access$100(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1098
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1110
    .end local v0           #imageView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
