.class Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;
.super Landroid/os/Handler;
.source "BulletinPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;->this$1:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 272
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;->this$1:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->access$500(Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 274
    .local v0, aug:[Ljava/lang/Object;
    sget-object v1, Lcom/baidu/bulletin/BulletinPresentation$4;->$SwitchMap$com$baidu$bulletin$BulletinPresentation$Event:[I

    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation$Event;->values()[Lcom/baidu/bulletin/BulletinPresentation$Event;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/baidu/bulletin/BulletinPresentation$Event;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 303
    .end local v0           #aug:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 276
    .restart local v0       #aug:[Ljava/lang/Object;
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;->this$1:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->access$500(Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onServiceStart()V

    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;->this$1:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->access$500(Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onSyncStart()V

    goto :goto_0

    .line 284
    :pswitch_2
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;->this$1:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->access$500(Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onAlreadySyncing()V

    goto :goto_0

    .line 288
    :pswitch_3
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;->this$1:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->access$500(Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v2

    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v3, v1}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onSyncFinish(ZI)V

    goto :goto_0

    .line 292
    :pswitch_4
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;->this$1:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->access$500(Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v2

    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onNewMessageNofitied(I)V

    goto :goto_0

    .line 296
    :pswitch_5
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;->this$1:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->access$500(Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v2

    aget-object v1, v0, v4

    check-cast v1, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-interface {v2, v1}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onPageLoaded(Lcom/baidu/bulletin/entity/ChannelItem;)V

    goto :goto_0

    .line 300
    :pswitch_6
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;->this$1:Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;

    #getter for: Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->access$500(Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v2

    aget-object v1, v0, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onPageImageLoaded(I)V

    goto :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
