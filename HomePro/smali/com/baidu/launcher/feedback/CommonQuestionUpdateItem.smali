.class public Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;
.super Ljava/lang/Object;
.source "CommonQuestionUpdateItem.java"


# instance fields
.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;->url:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/launcher/feedback/CommonQuestionUpdateItem;->version:Ljava/lang/String;

    .line 23
    return-void
.end method
