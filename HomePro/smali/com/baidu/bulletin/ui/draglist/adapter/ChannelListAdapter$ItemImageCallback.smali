.class Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;
.super Ljava/lang/Object;
.source "ChannelListAdapter.java"

# interfaces
.implements Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemImageCallback"
.end annotation


# instance fields
.field private itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter
    .parameter "itemInfo"

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;->itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 1084
    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 2
    .parameter "bitmap"
    .parameter "imageInfo"

    .prologue
    .line 1088
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;->itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iput-object p2, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 1090
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    #getter for: Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->access$300(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback$1;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1114
    :cond_0
    return-void
.end method
