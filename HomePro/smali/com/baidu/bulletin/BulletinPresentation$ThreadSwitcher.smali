.class Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;
.super Ljava/lang/Object;
.source "BulletinPresentation.java"

# interfaces
.implements Lcom/baidu/bulletin/BulletinPresentation$ClientSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/BulletinPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadSwitcher"
.end annotation


# instance fields
.field private mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/baidu/bulletin/BulletinPresentation;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/BulletinPresentation;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->this$0:Lcom/baidu/bulletin/BulletinPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher$1;-><init>(Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;)V

    iput-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/BulletinPresentation;Lcom/baidu/bulletin/BulletinPresentation$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;-><init>(Lcom/baidu/bulletin/BulletinPresentation;)V

    return-void
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    return-object v0
.end method

.method private varargs trigger(Lcom/baidu/bulletin/BulletinPresentation$Event;[Ljava/lang/Object;)V
    .locals 2
    .parameter "event"
    .parameter "aug"

    .prologue
    .line 262
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 263
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p1}, Lcom/baidu/bulletin/BulletinPresentation$Event;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 264
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    return-void
.end method


# virtual methods
.method public onAlreadySyncing()V
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->SYNCING:Lcom/baidu/bulletin/BulletinPresentation$Event;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->trigger(Lcom/baidu/bulletin/BulletinPresentation$Event;[Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public onNewMessageNofitied(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 250
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->New_MESSAGE_NOTIFIED:Lcom/baidu/bulletin/BulletinPresentation$Event;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->trigger(Lcom/baidu/bulletin/BulletinPresentation$Event;[Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public onPageImageLoaded(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 258
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->PAGE_IMAGE_LOADED:Lcom/baidu/bulletin/BulletinPresentation$Event;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->trigger(Lcom/baidu/bulletin/BulletinPresentation$Event;[Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public onPageLoaded(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 254
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->PAGE_LOADED:Lcom/baidu/bulletin/BulletinPresentation$Event;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->trigger(Lcom/baidu/bulletin/BulletinPresentation$Event;[Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public onServiceStart()V
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->SERVER_START:Lcom/baidu/bulletin/BulletinPresentation$Event;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->trigger(Lcom/baidu/bulletin/BulletinPresentation$Event;[Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public onSyncFinish(ZI)V
    .locals 4
    .parameter "changed"
    .parameter "count"

    .prologue
    .line 246
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->SYNC_FINISH:Lcom/baidu/bulletin/BulletinPresentation$Event;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->trigger(Lcom/baidu/bulletin/BulletinPresentation$Event;[Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public onSyncStart()V
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/baidu/bulletin/BulletinPresentation$Event;->SYNC_START:Lcom/baidu/bulletin/BulletinPresentation$Event;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->trigger(Lcom/baidu/bulletin/BulletinPresentation$Event;[Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public setObserver(Lcom/baidu/bulletin/BulletinPresentation$ClientSession;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinPresentation$ThreadSwitcher;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    .line 231
    return-void
.end method
