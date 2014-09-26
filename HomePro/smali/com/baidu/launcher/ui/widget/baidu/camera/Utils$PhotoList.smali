.class Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;
.super Ljava/util/ArrayList;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhotoList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)Z
    .locals 2
    .parameter "photo"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getId()I

    move-result v0

    .line 59
    .local v0, lastId:I
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getId()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->add(ILjava/lang/Object;)V

    .line 61
    const/4 v1, 0x1

    .line 66
    .end local v0           #lastId:I
    :goto_0
    return v1

    .line 63
    .restart local v0       #lastId:I
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 66
    .end local v0           #lastId:I
    :cond_1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->add(Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    .line 46
    move-object v2, p1

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 47
    .local v2, photo:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 48
    .local v1, p:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getId()I

    move-result v3

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getId()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 49
    const/4 v3, 0x1

    .line 52
    .end local v1           #p:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeByName(Ljava/lang/String;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;

    .line 72
    .local v1, p:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, split:[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/Utils$PhotoList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v1           #p:Lcom/baidu/launcher/ui/widget/baidu/camera/db/Photo;
    .end local v2           #split:[Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 71
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
