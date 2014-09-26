.class public final enum Lcom/baidu/launcher/thememanager/network/Request$RequestType;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/network/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/launcher/thememanager/network/Request$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field public static final enum REQ_TYPE_DOWNLOAD_APP:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field public static final enum REQ_TYPE_DOWNLOAD_CALLBACK:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field public static final enum REQ_TYPE_DOWNLOAD_THEME:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field public static final enum REQ_TYPE_DOWNLOAD_THEME_PREVIEW:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field public static final enum REQ_TYPE_GET_PICS:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field public static final enum REQ_TYPE_GET_STOKEN:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field public static final enum REQ_TYPE_GET_THEME_HOTTEST:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field public static final enum REQ_TYPE_GET_THEME_LATEST:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field public static final enum REQ_TYPE_GET_THEME_MATCH_1:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field public static final enum REQ_TYPE_GET_THEME_PREVIEW:Lcom/baidu/launcher/thememanager/network/Request$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    const-string v1, "REQ_TYPE_GET_THEME_LATEST"

    invoke-direct {v0, v1, v3}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_LATEST:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 30
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    const-string v1, "REQ_TYPE_GET_THEME_HOTTEST"

    invoke-direct {v0, v1, v4}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_HOTTEST:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 31
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    const-string v1, "REQ_TYPE_GET_THEME_MATCH_1"

    invoke-direct {v0, v1, v5}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_MATCH_1:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 32
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    const-string v1, "REQ_TYPE_GET_THEME_PREVIEW"

    invoke-direct {v0, v1, v6}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_PREVIEW:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 33
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    const-string v1, "REQ_TYPE_GET_STOKEN"

    invoke-direct {v0, v1, v7}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_STOKEN:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 34
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    const-string v1, "REQ_TYPE_DOWNLOAD_APP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_DOWNLOAD_APP:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 35
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    const-string v1, "REQ_TYPE_DOWNLOAD_THEME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_DOWNLOAD_THEME:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 36
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    const-string v1, "REQ_TYPE_DOWNLOAD_CALLBACK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_DOWNLOAD_CALLBACK:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 37
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    const-string v1, "REQ_TYPE_DOWNLOAD_THEME_PREVIEW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_DOWNLOAD_THEME_PREVIEW:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 38
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    const-string v1, "REQ_TYPE_GET_PICS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_PICS:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 28
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    sget-object v1, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_LATEST:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_HOTTEST:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_MATCH_1:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_PREVIEW:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_STOKEN:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_DOWNLOAD_APP:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_DOWNLOAD_THEME:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_DOWNLOAD_CALLBACK:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_DOWNLOAD_THEME_PREVIEW:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_PICS:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->$VALUES:[Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/launcher/thememanager/network/Request$RequestType;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/launcher/thememanager/network/Request$RequestType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->$VALUES:[Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    invoke-virtual {v0}, [Lcom/baidu/launcher/thememanager/network/Request$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    return-object v0
.end method
