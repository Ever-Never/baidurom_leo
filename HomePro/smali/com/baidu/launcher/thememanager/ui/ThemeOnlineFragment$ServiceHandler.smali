.class public final Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;
.super Landroid/os/Handler;
.source "ThemeOnlineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_BTN_CANCEL:I = 0x1

.field public static final MSG_BTN_Click:I


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 645
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const-wide/16 v3, 0x0

    .line 651
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 672
    :goto_0
    return-void

    .line 653
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "theme/ICON"

    invoke-static {v1, v0, v2}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadIDByUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    .line 655
    .local v7, downloadid:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    .line 656
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->updateDownload(Ljava/lang/String;IJJ)V

    .line 657
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #calls: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->update_button()V
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1200(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V

    goto :goto_0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v8, v1}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownloadWithNotice(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 663
    .end local v7           #downloadid:J
    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;

    .line 664
    .local v9, info:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    invoke-virtual {v9}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeUrl()Ljava/lang/String;

    move-result-object v13

    .line 665
    .local v13, url:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeTitle()Ljava/lang/String;

    move-result-object v12

    .line 666
    .local v12, title:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 667
    .local v10, key:Ljava/lang/String;
    invoke-static {v13}, Lcom/baidu/launcher/thememanager/util/Utils;->getPathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 668
    .local v11, mFilePath:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v13, v11, v12}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->requestDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
