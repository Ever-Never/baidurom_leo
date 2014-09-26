.class public Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Forecasts;
.super Ljava/lang/Object;
.source "ForecastProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$ForecastsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Forecasts"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/ForecastInfo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/ForecastInfo"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PROJECTION_FORECASTS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 445
    const-string v0, "content://com.baidu.home2.ui.widget.baidu.weather/ForecastInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Forecasts;->CONTENT_URI:Landroid/net/Uri;

    .line 452
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "locationCode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cityName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "validStart"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "conditions1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "conditions2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "conditions3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "conditions4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "date2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "date3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "date4"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iconDay1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "iconDay2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iconDay3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "iconDay4"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "iconNight1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "iconNight2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "iconNight3"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "iconNight4"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "tempHigh1"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "tempHigh2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "tempHigh3"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "tempHigh4"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "tempLow1"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "tempLow2"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "tempLow3"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "tempLow4"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "wind1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "wind2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "wind3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "wind4"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "tempCur"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "tempCal"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Forecasts;->PROJECTION_FORECASTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
