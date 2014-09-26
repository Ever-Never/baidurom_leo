.class Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$2;
.super Landroid/os/Handler;
.source "OpenThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$2;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$2;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #calls: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showDialog()V
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$900(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
