.class public Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;
.super Ljava/lang/Object;
.source "JsonStringToHistoryDescAdatper.java"

# interfaces
.implements Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;


# instance fields
.field private mJsonContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "jsonContent"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;->mJsonContent:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public get()[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    .locals 2

    .prologue
    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;->mJsonContent:Ljava/lang/String;

    const-class v1, [Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 20
    const/4 v0, 0x0

    goto :goto_0
.end method
