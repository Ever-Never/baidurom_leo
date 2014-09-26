.class public interface abstract Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;
.super Ljava/lang/Object;
.source "ICloudStorageCallback.java"


# virtual methods
.method public abstract OnDeleteFile(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onAuthResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onListDirectory(Ljava/lang/String;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;",
            ">;I)V"
        }
    .end annotation
.end method
