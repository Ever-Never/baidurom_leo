.class Lcom/baidu/bulletin/ui/logic/UIController$tokenCallBack;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/logic/UIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tokenCallBack"
.end annotation


# instance fields
.field private mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/logic/UIController;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/logic/UIController;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController$tokenCallBack;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p2, p0, Lcom/baidu/bulletin/ui/logic/UIController$tokenCallBack;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 530
    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 2
    .parameter "bduss"

    .prologue
    .line 533
    if-eqz p1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController$tokenCallBack;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController$tokenCallBack;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    #calls: Lcom/baidu/bulletin/ui/logic/UIController;->startGetMusicUrl(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->access$300(Lcom/baidu/bulletin/ui/logic/UIController;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 536
    :cond_0
    return-void
.end method
