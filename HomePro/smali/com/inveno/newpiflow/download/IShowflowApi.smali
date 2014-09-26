.class public interface abstract Lcom/inveno/newpiflow/download/IShowflowApi;
.super Ljava/lang/Object;
.source "IShowflowApi.java"


# static fields
.field public static final SHOWFLOW_NEWS_ACTION:Ljava/lang/String; = "getPinterest.action"


# virtual methods
.method public abstract getShowflowAds(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;
.end method

.method public abstract getShowflowNews(Landroid/content/Context;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/inveno/newpiflow/download/NoUpdateException;
        }
    .end annotation
.end method

.method public abstract saveLastShowNews(Landroid/content/Context;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method
