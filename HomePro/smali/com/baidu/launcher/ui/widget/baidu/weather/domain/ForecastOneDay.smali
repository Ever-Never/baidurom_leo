.class public Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;
.super Ljava/lang/Object;
.source "ForecastOneDay.java"


# instance fields
.field public conditions:Ljava/lang/String;

.field public date:J

.field public dateStr:Ljava/lang/String;

.field public iconDay:Ljava/lang/String;

.field public iconNight:Ljava/lang/String;

.field public tempHigh:I

.field public tempLow:I

.field private wind:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, -0x8000

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "unknow"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->dateStr:Ljava/lang/String;

    .line 38
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    .line 39
    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    .line 40
    iput v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    .line 41
    const-string v0, "unknow"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    .line 42
    const-string v0, "unknow"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->iconDay:Ljava/lang/String;

    .line 43
    const-string v0, "unknow"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->iconNight:Ljava/lang/String;

    .line 44
    const-string v0, "unknow"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->wind:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static fromContentValues(Landroid/content/ContentValues;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;
    .locals 2
    .parameter "contentValues"

    .prologue
    .line 26
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;-><init>()V

    .line 27
    .local v0, forecastOneDay:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;
    const-string v1, "conditions1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    .line 28
    const-string v1, "wind1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setWind(Ljava/lang/String;)V

    .line 29
    const-string v1, "iconDay1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->iconDay:Ljava/lang/String;

    .line 30
    const-string v1, "iconNight1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->iconNight:Ljava/lang/String;

    .line 31
    const-string v1, "tempHigh1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    .line 32
    const-string v1, "tempLow1"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    .line 34
    return-object v0
.end method


# virtual methods
.method public getConditions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    return-object v0
.end method

.method public getIconDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->iconDay:Ljava/lang/String;

    return-object v0
.end method

.method public getIconNight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->iconNight:Ljava/lang/String;

    return-object v0
.end method

.method public getTempHigh()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    return v0
.end method

.method public getTempLow()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    return v0
.end method

.method public getWind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->wind:Ljava/lang/String;

    return-object v0
.end method

.method public setConditions(Ljava/lang/String;)V
    .locals 0
    .parameter "conditions"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setIconDay(Ljava/lang/String;)V
    .locals 0
    .parameter "iconDay"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->iconDay:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setIconNight(Ljava/lang/String;)V
    .locals 0
    .parameter "iconNight"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->iconNight:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setTempHigh(I)V
    .locals 0
    .parameter "tempHigh"

    .prologue
    .line 52
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    .line 53
    return-void
.end method

.method public setTempLow(I)V
    .locals 0
    .parameter "tempLow"

    .prologue
    .line 60
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    .line 61
    return-void
.end method

.method public setWind(Ljava/lang/String;)V
    .locals 0
    .parameter "wind"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->wind:Ljava/lang/String;

    .line 93
    return-void
.end method
