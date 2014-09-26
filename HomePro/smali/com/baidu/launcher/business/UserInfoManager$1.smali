.class Lcom/baidu/launcher/business/UserInfoManager$1;
.super Ljava/lang/Object;
.source "UserInfoManager.java"

# interfaces
.implements Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/business/UserInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/business/UserInfoManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/business/UserInfoManager;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/baidu/launcher/business/UserInfoManager$1;->this$0:Lcom/baidu/launcher/business/UserInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DuplicateBind()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/business/UserInfoManager$1;->this$0:Lcom/baidu/launcher/business/UserInfoManager;

    #calls: Lcom/baidu/launcher/business/UserInfoManager;->recordBindUserInfo()V
    invoke-static {v0}, Lcom/baidu/launcher/business/UserInfoManager;->access$000(Lcom/baidu/launcher/business/UserInfoManager;)V

    .line 30
    return-void
.end method

.method public onBindFailed()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/baidu/launcher/business/UserInfoManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserInfo bind failed"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public onBindSucceed()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/launcher/business/UserInfoManager$1;->this$0:Lcom/baidu/launcher/business/UserInfoManager;

    #calls: Lcom/baidu/launcher/business/UserInfoManager;->recordBindUserInfo()V
    invoke-static {v0}, Lcom/baidu/launcher/business/UserInfoManager;->access$000(Lcom/baidu/launcher/business/UserInfoManager;)V

    .line 20
    return-void
.end method

.method public onUpdateInfoSucceed()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/baidu/launcher/business/BusinessSyncManager;

    iget-object v1, p0, Lcom/baidu/launcher/business/UserInfoManager$1;->this$0:Lcom/baidu/launcher/business/UserInfoManager;

    #getter for: Lcom/baidu/launcher/business/UserInfoManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/business/UserInfoManager;->access$200(Lcom/baidu/launcher/business/UserInfoManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/launcher/business/BusinessSyncManager;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, appManager:Lcom/baidu/launcher/business/BusinessSyncManager;
    invoke-virtual {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->syncRecomendApp()V

    .line 36
    return-void
.end method
