.class public Lcom/baidu/bulletin/ui/detail/HistoryTodayGennerateTime;
.super Ljava/lang/Object;
.source "HistoryTodayGennerateTime.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/detail/IGenerateTime;


# instance fields
.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayGennerateTime;->mTitle:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public generate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayGennerateTime;->mTitle:Ljava/lang/String;

    .line 29
    .local v0, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/HistoryTodayGennerateTime;->mTitle:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, splite:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_0
    return-object v0
.end method
