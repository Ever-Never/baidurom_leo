.class public Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData;
.super Ljava/lang/Object;
.source "ChannelData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData$IDataChangedObserver;
    }
.end annotation


# instance fields
.field public mDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataChangedObserver:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData$IDataChangedObserver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData;->mDataArrayList:Ljava/util/ArrayList;

    .line 17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData;->mDataArrayList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public setDataChangedObserver(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData$IDataChangedObserver;)V
    .locals 0
    .parameter "dataChangedObserver"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData;->mDataChangedObserver:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData$IDataChangedObserver;

    .line 12
    return-void
.end method

.method public updateData()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData;->mDataChangedObserver:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData$IDataChangedObserver;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData;->mDataChangedObserver:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData$IDataChangedObserver;

    invoke-interface {v0, p0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData$IDataChangedObserver;->onChanged(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelData;)V

    .line 27
    :cond_0
    return-void
.end method
