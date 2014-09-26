.class Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/logic/UIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "checkTaskChannelItemInfoRunnable"
.end annotation


# instance fields
.field private mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field private mOfflineId:Ljava/lang/String;

.field private mTaskListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/logic/UIController;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/logic/UIController;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "id"
    .parameter "ls"

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    iput-object p2, p0, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 1148
    iput-object p3, p0, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;->mOfflineId:Ljava/lang/String;

    .line 1149
    iput-object p4, p0, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;->mTaskListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    .line 1150
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1153
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkTaskRunnable run"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    #getter for: Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/logic/UIController;->access$200(Lcom/baidu/bulletin/ui/logic/UIController;)Lcom/baidu/launcher/app/Launcher;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;->mOfflineId:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/logic/UIController$checkTaskChannelItemInfoRunnable;->mTaskListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/bulletin/BulletinPresentation;->checkOfflineInfo(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    .line 1155
    return-void
.end method
