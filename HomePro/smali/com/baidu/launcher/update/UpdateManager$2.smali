.class Lcom/baidu/launcher/update/UpdateManager$2;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/update/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/update/UpdateManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/update/UpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckFailured()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$100(Lcom/baidu/launcher/update/UpdateManager;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 142
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 144
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$200(Lcom/baidu/launcher/update/UpdateManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onCheckFinish(Lcom/baidu/launcher/update/UpdateResponceInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 112
    if-nez p1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$100(Lcom/baidu/launcher/update/UpdateManager;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 115
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 116
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 117
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$200(Lcom/baidu/launcher/update/UpdateManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$000(Lcom/baidu/launcher/update/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "new_version"

    invoke-static {v1, v2, v4}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 122
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    invoke-virtual {p1}, Lcom/baidu/launcher/update/UpdateResponceInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/baidu/launcher/update/UpdateManager;->mUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/baidu/launcher/update/UpdateManager;->access$302(Lcom/baidu/launcher/update/UpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/launcher/update/UpdateResponceInfo;->getApp_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/baidu/launcher/update/UpdateManager;->mSaveName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/baidu/launcher/update/UpdateManager;->access$402(Lcom/baidu/launcher/update/UpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    iget-object v2, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    invoke-virtual {p1}, Lcom/baidu/launcher/update/UpdateResponceInfo;->getMarket()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/update/UpdateManager;->selectMarket([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/baidu/launcher/update/UpdateManager;->mTargetMarket:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/baidu/launcher/update/UpdateManager;->access$502(Lcom/baidu/launcher/update/UpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    invoke-virtual {p1}, Lcom/baidu/launcher/update/UpdateResponceInfo;->getVersion_name()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/baidu/launcher/update/UpdateManager;->mNewVersion:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/baidu/launcher/update/UpdateManager;->access$602(Lcom/baidu/launcher/update/UpdateManager;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$100(Lcom/baidu/launcher/update/UpdateManager;)I

    move-result v1

    if-nez v1, :cond_2

    .line 128
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 129
    .restart local v0       #msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 130
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$200(Lcom/baidu/launcher/update/UpdateManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 131
    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$100(Lcom/baidu/launcher/update/UpdateManager;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 132
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 133
    .restart local v0       #msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 134
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager$2;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->access$200(Lcom/baidu/launcher/update/UpdateManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
