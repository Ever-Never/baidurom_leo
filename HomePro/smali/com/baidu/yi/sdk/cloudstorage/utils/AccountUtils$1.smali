.class Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils$1;
.super Ljava/lang/Object;
.source "AccountUtils.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->addAccount(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;


# direct methods
.method constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils$1;->this$0:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 118
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils$1;->this$0:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;

    const/4 v2, 0x1

    #setter for: Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mResult:Z
    invoke-static {v1, v2}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->access$0(Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils$1;->this$0:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;

    #setter for: Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mIsAddingAccount:Z
    invoke-static {v1, v3}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->access$1(Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;Z)V

    .line 126
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils$1;->this$0:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;

    #setter for: Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mResult:Z
    invoke-static {v1, v3}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->access$0(Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;Z)V

    goto :goto_0
.end method
