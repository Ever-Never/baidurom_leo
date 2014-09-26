.class public Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;
.super Ljava/lang/Object;
.source "RequestAccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/RequestAccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public access_token:Ljava/lang/String;

.field public expires_in:J

.field public refresh_token:Ljava/lang/String;

.field public scope:Ljava/lang/String;

.field public session_key:Ljava/lang/String;

.field public session_secret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
