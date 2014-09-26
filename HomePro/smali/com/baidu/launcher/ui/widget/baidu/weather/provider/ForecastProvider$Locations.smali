.class public Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Locations;
.super Ljava/lang/Object;
.source "ForecastProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$LocationsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Locations"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/LocationInfo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/LocationInfo"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final INVALID_LOCATION_CODE:I = -0x1

.field public static final PROJECTION_LOCATIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 514
    const-string v0, "content://com.baidu.home2.ui.widget.baidu.weather/LocationInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Locations;->CONTENT_URI:Landroid/net/Uri;

    .line 523
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "locationCode"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "locationName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "locationNameEn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "locationNamePinYin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "locationNameInitials"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Locations;->PROJECTION_LOCATIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
