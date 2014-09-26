.class public Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
.super Ljava/lang/Object;
.source "City.java"


# static fields
.field private static logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;


# instance fields
.field public mLocationCode:Ljava/lang/String;

.field public mLocationName:Ljava/lang/String;

.field public mLocationNameEn:Ljava/lang/String;

.field public mLocationNameShort:Ljava/lang/String;

.field public mLocationNameShortEn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "code"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public fromContentValues(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "contentValues"

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v0, "locationName"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    .line 27
    const-string v0, "locationNameEn"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const-string v0, "locationNameEn"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameEn:Ljava/lang/String;

    .line 34
    :goto_1
    const-string v0, "locationCode"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShort:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameEn:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShortEn:Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameEn:Ljava/lang/String;

    goto :goto_1
.end method
