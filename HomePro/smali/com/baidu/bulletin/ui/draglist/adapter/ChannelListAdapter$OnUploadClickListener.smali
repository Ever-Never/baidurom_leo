.class Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnUploadClickListener;
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
    name = "OnUploadClickListener"
.end annotation


# instance fields
.field private mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter
    .parameter "channelItemInfo"

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnUploadClickListener;->this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnUploadClickListener;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 1124
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1128
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForMusicUploadClick()V

    .line 1130
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnUploadClickListener;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->onUploadClicked(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 1131
    return-void
.end method
