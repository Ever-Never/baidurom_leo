.class public Lcom/baidu/bulletin/dao/MusicQueryDetailStorageFile;
.super Ljava/lang/Object;
.source "MusicQueryDetailStorageFile.java"

# interfaces
.implements Lcom/baidu/bulletin/dao/IQueryDetailStorageFile;


# instance fields
.field private mChannelContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "channelContent"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/baidu/bulletin/dao/MusicQueryDetailStorageFile;->mChannelContent:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public query()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v0, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/baidu/bulletin/dao/MusicQueryDetailStorageFile;->mChannelContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-object v0
.end method
