.class public Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;
.super Ljava/lang/Object;
.source "ListenerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListenerUtil"

.field private static mInstance:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;


# instance fields
.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUUIDListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    .line 13
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mInstance:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    invoke-direct {v0}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;-><init>()V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mInstance:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    .line 32
    :cond_0
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mInstance:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public notifyAuthResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V
    .locals 7
    .parameter "pkgName"
    .parameter "uuid"
    .parameter "appKey"
    .parameter "token"
    .parameter "code"

    .prologue
    .line 172
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 173
    const/4 v2, 0x0

    .line 174
    .local v2, listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;>;"
    if-eqz p1, :cond_0

    .line 175
    :try_start_0
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 172
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    if-eqz p2, :cond_2

    .line 183
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 184
    :try_start_1
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;

    .line 185
    .local v1, l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    if-eqz v1, :cond_1

    .line 186
    const-string v3, "ListenerUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Notify client the auth result, uuid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v3, v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    iget v5, p5, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-interface {v3, p2, p3, p4, v5}, Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;->onAuthResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    .end local v1           #l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    :cond_2
    return-void

    .line 176
    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;

    .line 177
    .restart local v1       #l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    iget-object v5, v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    iget v6, p5, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-interface {v5, p2, p3, p4, v6}, Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;->onAuthResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 172
    .end local v1           #l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 183
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public notifyDeleteFile(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V
    .locals 9
    .parameter "req"
    .parameter "code"

    .prologue
    .line 136
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;>;"
    :try_start_0
    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->pkgName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 136
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 147
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 148
    :try_start_1
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;

    .line 149
    .local v1, l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    if-eqz v1, :cond_1

    .line 150
    const-string v3, "ListenerUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Notify client the delete result, uuid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->remotePath:Ljava/lang/String;

    iget v7, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-interface {v3, v5, v6, v7}, Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;->OnDeleteFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    .end local v1           #l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    :cond_2
    return-void

    .line 140
    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;

    .line 141
    .restart local v1       #l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    iget-object v5, v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    iget-object v7, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->remotePath:Ljava/lang/String;

    iget v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-interface {v5, v6, v7, v8}, Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;->OnDeleteFile(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 136
    .end local v1           #l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 147
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public notifyDownloadComplete(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V
    .locals 0
    .parameter "request"
    .parameter "code"

    .prologue
    .line 163
    return-void
.end method

.method public notifyListDirectory(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;Ljava/util/ArrayList;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V
    .locals 8
    .parameter "req"
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;",
            ">;",
            "Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;>;"
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;>;"
    :try_start_0
    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->pkgName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 111
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v3, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 122
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 123
    :try_start_1
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;

    .line 124
    .local v1, l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    if-eqz v1, :cond_1

    .line 125
    const-string v3, "ListenerUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Notify client the list result, uuid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v3, v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    iget v6, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-interface {v3, v5, p2, v6}, Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;->onListDirectory(Ljava/lang/String;Ljava/util/List;I)V

    .line 128
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .end local v1           #l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    :cond_2
    return-void

    .line 115
    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;

    .line 116
    .restart local v1       #l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    iget-object v5, v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    iget-object v6, p1, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    iget v7, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    invoke-interface {v5, v6, p2, v7}, Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;->onListDirectory(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    .line 111
    .end local v1           #l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 122
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public notifyUploadComplete(Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V
    .locals 0
    .parameter "request"
    .parameter "code"

    .prologue
    .line 168
    return-void
.end method

.method public putListener(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z
    .locals 7
    .parameter "pkgName"
    .parameter "callback"

    .prologue
    .line 61
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 62
    :cond_0
    const/4 v4, 0x0

    .line 77
    :goto_0
    return v4

    .line 65
    :cond_1
    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;

    invoke-direct {v1, p0, p2}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;-><init>(Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)V

    .line 66
    .local v1, l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    const/4 v4, 0x0

    .line 67
    .local v4, result:Z
    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    monitor-enter v6

    .line 68
    const/4 v2, 0x0

    .line 69
    .local v2, listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;>;"
    :try_start_0
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    if-nez v2, :cond_2

    .line 70
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .end local v2           #listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;>;"
    .local v3, listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;>;"
    move-object v2, v3

    .line 72
    .end local v3           #listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;>;"
    .restart local v2       #listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;>;"
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v4, 0x1

    .line 67
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public putListenerByUUID(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z
    .locals 4
    .parameter "uuid"
    .parameter "callback"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 47
    :goto_0
    return v1

    .line 40
    :cond_1
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;

    invoke-direct {v0, p0, p2}, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;-><init>(Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)V

    .line 41
    .local v0, l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    const/4 v1, 0x0

    .line 42
    .local v1, result:Z
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    monitor-enter v3

    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/4 v1, 0x1

    .line 42
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeListener(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)V
    .locals 6
    .parameter "pkgName"
    .parameter "callback"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const/4 v2, 0x0

    .line 87
    .local v2, listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;>;"
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 88
    :try_start_0
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 87
    :cond_3
    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 89
    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;

    .line 90
    .local v1, l:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public removeListenerByUUID(Ljava/lang/String;)V
    .locals 2
    .parameter "uuid"

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;->mUUIDListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
