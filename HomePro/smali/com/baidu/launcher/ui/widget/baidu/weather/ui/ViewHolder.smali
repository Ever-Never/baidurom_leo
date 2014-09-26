.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field private locationCode:Ljava/lang/String;

.field private locationName:Ljava/lang/String;

.field private tvLocation:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter "tvLocation"

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter "tvLocation"
    .parameter "locationCode"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->tvLocation:Landroid/widget/TextView;

    .line 23
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->locationCode:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getLocationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->locationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method public getTvLocation()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->tvLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method public setLocationCode(Ljava/lang/String;)V
    .locals 0
    .parameter "locationCode"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->locationCode:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0
    .parameter "locationName"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->locationName:Ljava/lang/String;

    .line 44
    return-void
.end method
