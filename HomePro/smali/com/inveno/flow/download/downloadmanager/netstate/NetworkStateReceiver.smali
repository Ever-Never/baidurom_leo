.class public Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# static fields
.field private static netChangeObserverArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/flow/download/downloadmanager/netstate/NetChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static netType:Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;

.field private static networkAvailable:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->networkAvailable:Ljava/lang/Boolean;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isNetworkAvailable()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->networkAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method private notifyObserver(Lcom/inveno/flow/download/downloadmanager/netstate/NetChangeObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 68
    invoke-static {}, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->isNetworkAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->netType:Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;

    invoke-virtual {p1, v0}, Lcom/inveno/flow/download/downloadmanager/netstate/NetChangeObserver;->onConnect(Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/inveno/flow/download/downloadmanager/netstate/NetChangeObserver;->onDisConnect()V

    goto :goto_0
.end method

.method public static registerObserver(Lcom/inveno/flow/download/downloadmanager/netstate/NetChangeObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 82
    sget-object v0, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    .line 85
    :cond_0
    sget-object v0, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public static removeRegisterObserver(Lcom/inveno/flow/download/downloadmanager/netstate/NetChangeObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 95
    sget-object v0, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public getAPNType()Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->netType:Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    invoke-static {p1}, Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->networkAvailable:Ljava/lang/Boolean;

    .line 45
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 51
    return-void

    .line 41
    .end local v0           #i:I
    :cond_0
    invoke-static {p1}, Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil;->getAPNType(Landroid/content/Context;)Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;

    move-result-object v2

    sput-object v2, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->netType:Lcom/inveno/flow/download/downloadmanager/netstate/NetWorkUtil$netType;

    .line 42
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->networkAvailable:Ljava/lang/Boolean;

    goto :goto_0

    .line 46
    .restart local v0       #i:I
    :cond_1
    sget-object v2, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->netChangeObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/flow/download/downloadmanager/netstate/NetChangeObserver;

    .line 47
    .local v1, observer:Lcom/inveno/flow/download/downloadmanager/netstate/NetChangeObserver;
    if-eqz v1, :cond_2

    .line 48
    invoke-direct {p0, v1}, Lcom/inveno/flow/download/downloadmanager/netstate/NetworkStateReceiver;->notifyObserver(Lcom/inveno/flow/download/downloadmanager/netstate/NetChangeObserver;)V

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
