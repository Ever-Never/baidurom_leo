.class Lcom/baidu/bulletin/ui/logic/UIController$4;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/logic/UIController;->startMusicPlayer(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/logic/UIController;

.field final synthetic val$data:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field final synthetic val$observer:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/logic/UIController;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController$4;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/logic/UIController$4;->val$data:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iput-object p3, p0, Lcom/baidu/bulletin/ui/logic/UIController$4;->val$observer:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController$4;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController$4;->val$data:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController$4;->val$observer:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->startPlayer(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    .line 712
    return-void
.end method
