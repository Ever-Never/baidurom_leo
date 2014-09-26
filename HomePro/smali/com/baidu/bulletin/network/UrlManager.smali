.class public Lcom/baidu/bulletin/network/UrlManager;
.super Ljava/lang/Object;
.source "UrlManager.java"


# static fields
.field public static final APP_LIST_URL:Ljava/lang/String; = "http://os.baidu.com/screen/applist?id="

.field public static final BULLETIN_OP_HOST_NAME:Ljava/lang/String; = "http://cloud.os.baidu.com"

.field public static final CHANNEL_APPLIST_DETAIL_URL:Ljava/lang/String; = "http://os.baidu.com/screen/apptopic/detail"

.field public static final CHANNEL_APP_TOPIC_URL:Ljava/lang/String; = "http://os.baidu.com/screen/apptopic/query"

.field public static final CHANNEL_BULLETIN_OP_LIST_URL:Ljava/lang/String; = "http://cloud.os.baidu.com/screenOper/operation/query"

.field public static final CHANNEL_CHANNEL_LIST_URL:Ljava/lang/String; = "http://os.baidu.com/screen/news"

.field public static final CHANNEL_IMAGE_LIST_URL:Ljava/lang/String; = "http://os.baidu.com/screen/picture/query"

.field public static final CHANNEL_ITEM_LIST_URL:Ljava/lang/String; = "http://os.baidu.com/screen/news"

.field public static final CHANNEL_NEWS_DETAIL_URL:Ljava/lang/String; = "http://os.baidu.com/screen/news/detail"

.field public static final CHANNEL_NEWS_LIST_URL:Ljava/lang/String; = "http://os.baidu.com/screen/news/query"

.field public static final CHANNEL_OP_LIST_URL:Ljava/lang/String; = "http://os.baidu.com/screen/ad/query"

.field private static final DEBUG:Z = true

.field public static final HOST_NAME:Ljava/lang/String; = "http://os.baidu.com"

.field public static final OPENAPI_SONG_INFO_URL:Ljava/lang/String; = "https://openapi.baidu.com/rest/2.0/music/song/info"

.field private static final TAG:Ljava/lang/String; = null

.field public static final VALIDATE_URL:Ljava/lang/String; = "http://os.baidu.com/screen/sort"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/baidu/bulletin/network/UrlManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/network/UrlManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildRequest(Lcom/baidu/bulletin/http/HttpTask;Ljava/lang/Object;)Lcom/baidu/bulletin/http/HttpTask;
    .locals 19
    .parameter "task"
    .parameter "request"

    .prologue
    .line 48
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawUpdate$Request;

    if-eqz v15, :cond_1

    .line 49
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    const-string v16, "http://os.baidu.com/screen/sort"

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 163
    :cond_0
    :goto_0
    return-object p0

    .line 50
    :cond_1
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawChannel$Request;

    if-eqz v15, :cond_2

    move-object/from16 v12, p1

    .line 51
    check-cast v12, Lcom/baidu/bulletin/network/protocol/RawChannel$Request;

    .line 52
    .local v12, requestObj:Lcom/baidu/bulletin/network/protocol/RawChannel$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://os.baidu.com/screen/news"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?channel="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v12, Lcom/baidu/bulletin/network/protocol/RawChannel$Request;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&current="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v12, Lcom/baidu/bulletin/network/protocol/RawChannel$Request;->version:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto :goto_0

    .line 56
    .end local v12           #requestObj:Lcom/baidu/bulletin/network/protocol/RawChannel$Request;
    :cond_2
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/FileDownloader$Request;

    if-eqz v15, :cond_3

    move-object/from16 v4, p1

    .line 57
    check-cast v4, Lcom/baidu/bulletin/network/FileDownloader$Request;

    .line 58
    .local v4, fileItemReq:Lcom/baidu/bulletin/network/FileDownloader$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    iget-object v0, v4, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto :goto_0

    .line 59
    .end local v4           #fileItemReq:Lcom/baidu/bulletin/network/FileDownloader$Request;
    :cond_3
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;

    if-eqz v15, :cond_4

    move-object/from16 v14, p1

    .line 60
    check-cast v14, Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;

    .line 61
    .local v14, secondaryReq:Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    iget-object v0, v14, Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto :goto_0

    .line 62
    .end local v14           #secondaryReq:Lcom/baidu/bulletin/network/protocol/RawNativePage$Request;
    :cond_4
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Request;

    if-eqz v15, :cond_5

    .line 63
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "https://openapi.baidu.com/oauth/2.0/token?grant_type=client_credentials"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&client_id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "didGtEhBpQNQMmmFgQF7r6zP"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&client_secret="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Xrj2QNOmSbGpVR5S053qM5krBqPNeKoz"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 67
    :cond_5
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;

    if-eqz v15, :cond_6

    move-object/from16 v13, p1

    .line 68
    check-cast v13, Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;

    .line 69
    .local v13, requestsong:Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "https://openapi.baidu.com/rest/2.0/music/song/info"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?songid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;->songId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&access_token="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v13, Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;->token:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 73
    .end local v13           #requestsong:Lcom/baidu/bulletin/network/RequestAccessTokenManager$RequestSong;
    :cond_6
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawAppList$Request;

    if-eqz v15, :cond_7

    move-object/from16 v11, p1

    .line 74
    check-cast v11, Lcom/baidu/bulletin/network/protocol/RawAppList$Request;

    .line 76
    .local v11, rawAppListRequest:Lcom/baidu/bulletin/network/protocol/RawAppList$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "http://os.baidu.com/screen/applist?id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    iget-object v0, v11, Lcom/baidu/bulletin/network/protocol/RawAppList$Request;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 79
    .end local v11           #rawAppListRequest:Lcom/baidu/bulletin/network/protocol/RawAppList$Request;
    :cond_7
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;

    if-eqz v15, :cond_8

    move-object/from16 v8, p1

    .line 80
    check-cast v8, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;

    .line 82
    .local v8, newsChannelRequest:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://os.baidu.com/screen/news/query"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?topic="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v8, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->topic:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&max="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v8, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->count:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&version="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v8, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->version:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&direct="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v8, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->direct:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&cuid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v8, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->cuid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&from="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v8, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;->appName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 90
    .end local v8           #newsChannelRequest:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Request;
    :cond_8
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;

    if-eqz v15, :cond_9

    move-object/from16 v2, p1

    .line 91
    check-cast v2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;

    .line 93
    .local v2, appChannelRequest:Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://os.baidu.com/screen/apptopic/query"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?max="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->count:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&version="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->version:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&direct="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->direct:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&cuid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->cuid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&from="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;->appName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 100
    .end local v2           #appChannelRequest:Lcom/baidu/bulletin/network/protocol/RawAppChannel$Request;
    :cond_9
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;

    if-eqz v15, :cond_a

    move-object/from16 v7, p1

    .line 101
    check-cast v7, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;

    .line 103
    .local v7, musicChannelRequest:Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://os.baidu.com/screen/news"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?channel="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v7, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;->channelId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&current="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v7, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;->version:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 109
    .end local v7           #musicChannelRequest:Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Request;
    :cond_a
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;

    if-eqz v15, :cond_b

    move-object/from16 v5, p1

    .line 110
    check-cast v5, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;

    .line 112
    .local v5, historyChannelRequest:Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://os.baidu.com/screen/news"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?channel="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v5, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;->channelId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&current="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v5, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;->version:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 118
    .end local v5           #historyChannelRequest:Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Request;
    :cond_b
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;

    if-eqz v15, :cond_c

    move-object/from16 v6, p1

    .line 119
    check-cast v6, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;

    .line 121
    .local v6, imageChannelRequest:Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://os.baidu.com/screen/picture/query"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?topic="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v6, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->topic:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&max="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v6, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->count:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&version="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-wide v0, v6, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->version:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&direct="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v6, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->direct:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&cuid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v6, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->cuid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&from="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v6, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;->appName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 129
    .end local v6           #imageChannelRequest:Lcom/baidu/bulletin/network/protocol/RawImageChannel$Request;
    :cond_c
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;

    if-eqz v15, :cond_d

    move-object/from16 v9, p1

    .line 130
    check-cast v9, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;

    .line 132
    .local v9, newsDetailRequest:Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://os.baidu.com/screen/news/detail"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;->content:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&cuid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;->cuid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&from="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v9, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;->appName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 138
    .end local v9           #newsDetailRequest:Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;
    :cond_d
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;

    if-eqz v15, :cond_e

    move-object/from16 v3, p1

    .line 139
    check-cast v3, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;

    .line 141
    .local v3, appDetailRequest:Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://os.baidu.com/screen/apptopic/detail"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v3, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;->content:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&cuid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v3, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;->cuid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&from="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v3, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;->appName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 147
    .end local v3           #appDetailRequest:Lcom/baidu/bulletin/network/protocol/RawAppDetail$Request;
    :cond_e
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;

    if-eqz v15, :cond_f

    move-object/from16 v10, p1

    .line 148
    check-cast v10, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;

    .line 149
    .local v10, opChannelRequest:Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://os.baidu.com/screen/ad/query"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "?channel="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;->opTopic:Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;->channelName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&topic="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;->opTopic:Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;->topic:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&cuid="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;->cuid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&from="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;->appName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0

    .line 154
    .end local v10           #opChannelRequest:Lcom/baidu/bulletin/network/protocol/RawOpChannel$Request;
    :cond_f
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;

    if-eqz v15, :cond_0

    move-object/from16 v10, p1

    .line 155
    check-cast v10, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;

    .line 156
    .local v10, opChannelRequest:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/http/HttpTask;->mRequest:Lcom/baidu/bulletin/http/HttpParam$Request;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://cloud.os.baidu.com/screenOper/operation/query"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Request;->cuid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "rom_platform"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    goto/16 :goto_0
.end method
