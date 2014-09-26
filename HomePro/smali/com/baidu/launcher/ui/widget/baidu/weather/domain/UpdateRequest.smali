.class public Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;
.super Ljava/lang/Object;
.source "UpdateRequest.java"


# instance fields
.field private final code:Ljava/lang/String;

.field private final forceUpdate:Z

.field private latitude:D

.field private longitude:D

.field private final requestType:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;


# direct methods
.method public constructor <init>(DDZ)V
    .locals 1
    .parameter "longitude"
    .parameter "latitude"
    .parameter "forceUpdate"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->longitude:D

    .line 31
    iput-wide p3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->latitude:D

    .line 32
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;->TYPE_CURRENT:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->requestType:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    .line 33
    iput-boolean p5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->forceUpdate:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->code:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;)V
    .locals 1
    .parameter "locationCode"
    .parameter "type"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->requestType:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    .line 39
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->code:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->forceUpdate:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;)V
    .locals 0
    .parameter "code"
    .parameter "forceUpdate"
    .parameter "type"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->code:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->requestType:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    .line 26
    iput-boolean p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->forceUpdate:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->latitude:D

    return-wide v0
.end method

.method public getLocationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->longitude:D

    return-wide v0
.end method

.method public getRequestType()Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->requestType:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/RequestType;

    return-object v0
.end method

.method public isForceUpdate()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/UpdateRequest;->forceUpdate:Z

    return v0
.end method
