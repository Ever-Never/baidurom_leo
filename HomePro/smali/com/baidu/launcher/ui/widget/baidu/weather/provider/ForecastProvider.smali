.class public Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;
.super Landroid/content/ContentProvider;
.source "ForecastProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMLocationInfo;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMLocationColumns;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMInfo;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMColumns;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Locations;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$LocationsColumns;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Widgets;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$WidgetsColumns;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Forecasts;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$ForecastsColumns;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.baidu.home2.ui.widget.baidu.weather"

.field private static final M_FORECASTS:I = 0xc9

.field private static final M_FORECASTS_ID:I = 0xca

.field private static final M_LOCATIONS:I = 0x12d

.field private static final M_LOCATIONS_ID:I = 0x12e

.field private static final M_PM:I = 0x191

.field private static final M_PM_ID:I = 0x192

.field private static final M_PM_LOCATION:I = 0x1f5

.field private static final M_PM_LOCATION_ID:I = 0x1f6

.field private static final M_WIDGETS:I = 0x65

.field private static final M_WIDGETS_ID:I = 0x66

.field private static final SQL_DROP_FORECAST:Ljava/lang/String; = "DROP TABLE IF EXISTS \'ForecastInfo\'"

.field private static final SQL_DROP_LOCATION:Ljava/lang/String; = "DROP TABLE IF EXISTS \'LocationInfo\'"

.field private static final SQL_DROP_PMINFO:Ljava/lang/String; = "DROP TABLE IF EXISTS \'PMInfo\'"

.field private static final SQL_DROP_PMLOCATION:Ljava/lang/String; = "DROP TABLE IF EXISTS \'PMLocation\'"

.field private static final SQL_DROP_WIDGETINFO:Ljava/lang/String; = "DROP TABLE IF EXISTS \'WidgetInfo\'"

.field private static final SQL_TABLE_EXIST:Ljava/lang/String; = "select DISTINCT tbl_name from sqlite_master where tbl_name = ?"

.field private static final TABLE_FORECASTS:Ljava/lang/String; = "ForecastInfo"

.field private static final TABLE_LOCATIONS:Ljava/lang/String; = "LocationInfo"

.field private static final TABLE_PM:Ljava/lang/String; = "PMInfo"

.field private static final TABLE_PM_LOCATION:Ljava/lang/String; = "PMLocation"

.field private static final TABLE_WIDGETS:Ljava/lang/String; = "WidgetInfo"

.field private static logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    .line 41
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 89
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.baidu.home2.ui.widget.baidu.weather"

    const-string v2, "WidgetInfo"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.baidu.home2.ui.widget.baidu.weather"

    const-string v2, "WidgetInfo/#"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.baidu.home2.ui.widget.baidu.weather"

    const-string v2, "ForecastInfo"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.baidu.home2.ui.widget.baidu.weather"

    const-string v2, "ForecastInfo/#"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.baidu.home2.ui.widget.baidu.weather"

    const-string v2, "LocationInfo"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.baidu.home2.ui.widget.baidu.weather"

    const-string v2, "LocationInfo/#"

    const/16 v3, 0x12e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 98
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.baidu.home2.ui.widget.baidu.weather"

    const-string v2, "PMInfo"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.baidu.home2.ui.widget.baidu.weather"

    const-string v2, "PMInfo/#"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.baidu.home2.ui.widget.baidu.weather"

    const-string v2, "PMLocation"

    const/16 v3, 0x1f5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.baidu.home2.ui.widget.baidu.weather"

    const-string v2, "PMLocation/#"

    const/16 v3, 0x1f6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 570
    return-void
.end method

.method static synthetic access$000()Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 184
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete() with uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 185
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->mOpenHelper:Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 187
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 188
    .local v2, count:I
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 230
    :goto_0
    if-lez v2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, p1, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 234
    :cond_0
    return v2

    .line 190
    :sswitch_0
    const-string v7, "WidgetInfo"

    invoke-virtual {v3, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 191
    goto :goto_0

    .line 195
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 196
    .local v0, appWidgetId:J
    const-string v7, "WidgetInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widgetId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 197
    goto :goto_0

    .line 200
    .end local v0           #appWidgetId:J
    :sswitch_2
    const-string v7, "ForecastInfo"

    invoke-virtual {v3, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 201
    goto :goto_0

    .line 204
    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 205
    .local v4, forecastId:J
    const-string v7, "ForecastInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 206
    goto :goto_0

    .line 209
    .end local v4           #forecastId:J
    :sswitch_4
    const-string v7, "LocationInfo"

    invoke-virtual {v3, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 210
    goto :goto_0

    .line 213
    :sswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 214
    .local v6, locationCode:Ljava/lang/String;
    const-string v7, "LocationInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "locationCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 216
    goto/16 :goto_0

    .line 219
    .end local v6           #locationCode:Ljava/lang/String;
    :sswitch_6
    const-string v7, "PMInfo"

    invoke-virtual {v3, v7, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 220
    goto/16 :goto_0

    .line 223
    :sswitch_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 224
    .restart local v6       #locationCode:Ljava/lang/String;
    const-string v7, "PMInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "locationCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 226
    goto/16 :goto_0

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0x12d -> :sswitch_4
        0x12e -> :sswitch_5
        0x191 -> :sswitch_6
        0x192 -> :sswitch_7
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 340
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 342
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/WidgetInfo"

    .line 357
    :goto_0
    return-object v0

    .line 345
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/WidgetInfo"

    goto :goto_0

    .line 348
    :sswitch_2
    const-string v0, "vnd.android.cursor.dir/ForecastInfo"

    goto :goto_0

    .line 351
    :sswitch_3
    const-string v0, "vnd.android.cursor.item/ForecastInfo"

    goto :goto_0

    .line 354
    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/LocationInfo"

    goto :goto_0

    .line 357
    :sswitch_5
    const-string v0, "vnd.android.cursor.item/LocationInfo"

    goto :goto_0

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0x12d -> :sswitch_4
        0x12e -> :sswitch_5
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const-wide/16 v7, -0x1

    .line 239
    sget-object v4, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert() with uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 240
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->mOpenHelper:Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 241
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 243
    .local v1, resultUri:Landroid/net/Uri;
    sget-object v4, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 273
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 245
    :sswitch_0
    const-string v4, "WidgetInfo"

    const-string v5, "widgetId"

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 246
    .local v2, rowId:J
    cmp-long v4, v2, v7

    if-eqz v4, :cond_0

    .line 247
    sget-object v4, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Widgets;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 276
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 278
    :cond_1
    return-object v1

    .line 252
    .end local v2           #rowId:J
    :sswitch_1
    const-string v4, "ForecastInfo"

    const-string v5, "locationCode"

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 253
    .restart local v2       #rowId:J
    cmp-long v4, v2, v7

    if-eqz v4, :cond_0

    .line 254
    sget-object v4, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Forecasts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 259
    .end local v2           #rowId:J
    :sswitch_2
    const-string v4, "LocationInfo"

    const-string v5, "locationCode"

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 260
    .restart local v2       #rowId:J
    cmp-long v4, v2, v7

    if-eqz v4, :cond_0

    .line 261
    sget-object v4, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$Locations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 266
    .end local v2           #rowId:J
    :sswitch_3
    const-string v4, "PMInfo"

    const-string v5, "locationCode"

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 267
    .restart local v2       #rowId:J
    cmp-long v4, v2, v7

    if-eqz v4, :cond_0

    .line 268
    sget-object v4, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$PMInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x12d -> :sswitch_2
        0x191 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 108
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "forecasts.db"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->mOpenHelper:Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 114
    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query() with uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->mOpenHelper:Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 116
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 117
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 170
    :goto_0
    const/4 v9, 0x0

    .line 172
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 178
    :goto_1
    return-object v9

    .line 119
    .end local v9           #cursor:Landroid/database/Cursor;
    :sswitch_0
    const-string v2, "WidgetInfo"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 124
    .local v8, appWidgetId:Ljava/lang/String;
    const-string v2, "WidgetInfo"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widgetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    .end local v8           #appWidgetId:Ljava/lang/String;
    :sswitch_2
    const-string v2, "ForecastInfo"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 134
    .local v11, forecastId:Ljava/lang/String;
    const-string v2, "ForecastInfo"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    .end local v11           #forecastId:Ljava/lang/String;
    :sswitch_4
    const-string v2, "LocationInfo"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :sswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 144
    .local v12, locationCode:Ljava/lang/String;
    const-string v2, "LocationInfo"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 150
    .end local v12           #locationCode:Ljava/lang/String;
    :sswitch_6
    const-string v2, "PMInfo"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :sswitch_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 155
    .restart local v12       #locationCode:Ljava/lang/String;
    const-string v2, "PMInfo"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 160
    .end local v12           #locationCode:Ljava/lang/String;
    :sswitch_8
    const-string v2, "PMLocation"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :sswitch_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 165
    .restart local v12       #locationCode:Ljava/lang/String;
    const-string v2, "PMLocation"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 173
    .end local v12           #locationCode:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 175
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query() happen  SQLiteException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0x12d -> :sswitch_4
        0x12e -> :sswitch_5
        0x191 -> :sswitch_6
        0x192 -> :sswitch_7
        0x1f5 -> :sswitch_8
        0x1f6 -> :sswitch_9
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 283
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update() with uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 284
    const/4 v6, 0x0

    .line 285
    .local v6, result:I
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->mOpenHelper:Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 287
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 328
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 289
    :sswitch_0
    const-string v7, "WidgetInfo"

    invoke-virtual {v2, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 331
    :goto_0
    if-lez v6, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 335
    :cond_0
    return v6

    .line 293
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 294
    .local v0, appWidgetId:J
    const-string v7, "WidgetInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "widgetId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v7, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 296
    goto :goto_0

    .line 299
    .end local v0           #appWidgetId:J
    :sswitch_2
    const-string v7, "ForecastInfo"

    invoke-virtual {v2, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 300
    goto :goto_0

    .line 303
    :sswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 304
    .local v3, forecastId:J
    const-string v7, "WidgetInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v7, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 305
    goto :goto_0

    .line 308
    .end local v3           #forecastId:J
    :sswitch_4
    const-string v7, "LocationInfo"

    invoke-virtual {v2, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 309
    goto :goto_0

    .line 312
    :sswitch_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 313
    .local v5, locationCode:Ljava/lang/String;
    const-string v7, "LocationInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "locationCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v7, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 315
    goto/16 :goto_0

    .line 318
    .end local v5           #locationCode:Ljava/lang/String;
    :sswitch_6
    const-string v7, "PMInfo"

    invoke-virtual {v2, v7, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 319
    goto/16 :goto_0

    .line 322
    :sswitch_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 323
    .restart local v5       #locationCode:Ljava/lang/String;
    const-string v7, "PMInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "locationCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v7, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 325
    goto/16 :goto_0

    .line 287
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0x12d -> :sswitch_4
        0x12e -> :sswitch_5
        0x191 -> :sswitch_6
        0x192 -> :sswitch_7
    .end sparse-switch
.end method
