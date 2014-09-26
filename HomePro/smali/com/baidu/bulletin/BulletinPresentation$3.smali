.class Lcom/baidu/bulletin/BulletinPresentation$3;
.super Ljava/lang/Object;
.source "BulletinPresentation.java"

# interfaces
.implements Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/BulletinPresentation;->offlineFile(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/BulletinPresentation;

.field final synthetic val$data:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field final synthetic val$ls:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/BulletinPresentation;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinPresentation$3;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    iput-object p2, p0, Lcom/baidu/bulletin/BulletinPresentation$3;->val$data:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iput-object p3, p0, Lcom/baidu/bulletin/BulletinPresentation$3;->val$ls:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 4
    .parameter "bduss"

    .prologue
    .line 162
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account bduss is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation$3;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    #setter for: Lcom/baidu/bulletin/BulletinPresentation;->mbduss:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/baidu/bulletin/BulletinPresentation;->access$402(Lcom/baidu/bulletin/BulletinPresentation;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation$3;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation;->mbduss:Ljava/lang/String;
    invoke-static {v0}, Lcom/baidu/bulletin/BulletinPresentation;->access$400(Lcom/baidu/bulletin/BulletinPresentation;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation$3;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;
    invoke-static {v0}, Lcom/baidu/bulletin/BulletinPresentation;->access$100(Lcom/baidu/bulletin/BulletinPresentation;)Lcom/baidu/bulletin/BulletinService$ServiceSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation$3;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation;->mServiceSession:Lcom/baidu/bulletin/BulletinService$ServiceSession;
    invoke-static {v0}, Lcom/baidu/bulletin/BulletinPresentation;->access$100(Lcom/baidu/bulletin/BulletinPresentation;)Lcom/baidu/bulletin/BulletinService$ServiceSession;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation$3;->val$data:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v2, p0, Lcom/baidu/bulletin/BulletinPresentation$3;->val$ls:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/BulletinService$ServiceSession;->offlineFile(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation$3;->val$ls:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/bulletin/BulletinPresentation$3;->val$data:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/16 v3, 0x8

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskFailed(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;I)V

    goto :goto_0
.end method
