.class public Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;
.super Landroid/os/Handler;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/app/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LauncherHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/LauncherApplication;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/app/LauncherApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 308
    const-string v2, "LauncherApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handler "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 339
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 340
    return-void

    .line 311
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 313
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    iget-object v3, p0, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    const v4, 0x7f0c001e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/baidu/launcher/app/LauncherApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 316
    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    #calls: Lcom/baidu/launcher/app/LauncherApplication;->updateView()V
    invoke-static {v2}, Lcom/baidu/launcher/app/LauncherApplication;->access$100(Lcom/baidu/launcher/app/LauncherApplication;)V

    goto :goto_0

    .line 320
    .end local v0           #name:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    iget-object v3, p0, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    const v4, 0x7f0c001d

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/app/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 326
    .restart local v0       #name:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    iget-object v3, p0, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    const v4, 0x7f0c001f

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/baidu/launcher/app/LauncherApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 329
    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    #calls: Lcom/baidu/launcher/app/LauncherApplication;->updateView()V
    invoke-static {v2}, Lcom/baidu/launcher/app/LauncherApplication;->access$100(Lcom/baidu/launcher/app/LauncherApplication;)V

    goto :goto_0

    .line 333
    .end local v0           #name:Ljava/lang/String;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 334
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->this$0:Lcom/baidu/launcher/app/LauncherApplication;

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
