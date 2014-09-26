.class public Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;
.super Ljava/lang/Object;
.source "WalppaperOnlineCategory.java"


# instance fields
.field private count:I

.field private name:Ljava/lang/String;

.field private thumbUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->thumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 24
    iput p1, p0, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->count:I

    .line 25
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->name:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setThumbUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbUrl"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->thumbUrl:Ljava/lang/String;

    .line 19
    return-void
.end method
