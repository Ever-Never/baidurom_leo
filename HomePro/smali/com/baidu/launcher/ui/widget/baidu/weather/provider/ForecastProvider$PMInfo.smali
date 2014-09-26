.class public Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMInfo;
.super Ljava/lang/Object;
.source "ForecastProvider.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PMInfo"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/PMInfo"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/PMInfo"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final INVALID_LOCATION_CODE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 543
    const-string v0, "content://com.baidu.home2.ui.widget.baidu.weather/PMInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
