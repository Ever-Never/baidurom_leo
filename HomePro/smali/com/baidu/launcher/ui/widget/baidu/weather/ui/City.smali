.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/City;
.super Ljava/lang/Object;
.source "City.java"


# instance fields
.field private final mLocationCode:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "locationCode"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/City;->mName:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/City;->mLocationCode:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getLocationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/City;->mLocationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/City;->mName:Ljava/lang/String;

    return-object v0
.end method
