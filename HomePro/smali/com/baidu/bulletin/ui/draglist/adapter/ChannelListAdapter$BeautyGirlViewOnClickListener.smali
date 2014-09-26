.class Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;
.super Ljava/lang/Object;
.source "ChannelListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeautyGirlViewOnClickListener"
.end annotation


# instance fields
.field private mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field private mPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter "currentItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;",
            ">;",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 900
    .local p2, pairs:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;>;"
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;->this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    iput-object p3, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 902
    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;->mPairs:Ljava/util/List;

    .line 904
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 908
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->getInstance()Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-result-object v0

    .line 909
    .local v0, detailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;->mPairs:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->setData(Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 911
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;->this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    #getter for: Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mOnChannelItemClick:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$IOnChannelItemClick;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->access$000(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;)Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$IOnChannelItemClick;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v1, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$IOnChannelItemClick;->onClick(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 912
    return-void
.end method
