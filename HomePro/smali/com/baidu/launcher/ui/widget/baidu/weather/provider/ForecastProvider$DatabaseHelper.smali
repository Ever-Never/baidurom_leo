.class Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ForecastProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field public static final CURRENT_DATABASE_VERSION:I = 0x5

.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 585
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 586
    sput-object p1, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 588
    return-void
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    .line 607
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 608
    const-string v8, "DROP TABLE IF EXISTS \'LocationInfo\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 609
    const-string v8, "DROP TABLE IF EXISTS \'ForecastInfo\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 610
    const-string v8, "DROP TABLE IF EXISTS \'WidgetInfo\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 611
    const-string v8, "DROP TABLE IF EXISTS \'PMInfo\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 612
    const-string v8, "DROP TABLE IF EXISTS \'PMLocation\'"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 615
    const/4 v4, 0x0

    .line 616
    .local v4, fr:Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .line 617
    .local v6, inputStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 618
    .local v0, buf:Ljava/io/BufferedReader;
    sget-object v8, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    if-nez v8, :cond_0

    .line 646
    :goto_0
    return-void

    .line 621
    :cond_0
    :try_start_0
    sget-object v8, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 623
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 624
    .end local v4           #fr:Ljava/io/InputStreamReader;
    .local v5, fr:Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 625
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 626
    .local v7, line:Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 627
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 629
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 630
    .end local v5           #fr:Ljava/io/InputStreamReader;
    .end local v7           #line:Ljava/lang/String;
    .local v3, ex:Ljava/io/IOException;
    .restart local v4       #fr:Ljava/io/InputStreamReader;
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->access$000()Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copy init database failed, Reason : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 633
    if-eqz v0, :cond_1

    .line 634
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 635
    :cond_1
    if-eqz v4, :cond_2

    .line 636
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 637
    :cond_2
    if-eqz v6, :cond_3

    .line 638
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 644
    .end local v3           #ex:Ljava/io/IOException;
    :cond_3
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 645
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 633
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/InputStreamReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/InputStreamReader;
    .restart local v7       #line:Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 634
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 635
    :cond_5
    if-eqz v5, :cond_6

    .line 636
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 637
    :cond_6
    if-eqz v6, :cond_7

    .line 638
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_7
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 641
    .end local v5           #fr:Ljava/io/InputStreamReader;
    .restart local v4       #fr:Ljava/io/InputStreamReader;
    goto :goto_3

    .line 639
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/InputStreamReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v2

    .line 640
    .local v2, e:Ljava/io/IOException;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->access$000()Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Close input stream failed, Reason : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 643
    .end local v5           #fr:Ljava/io/InputStreamReader;
    .restart local v4       #fr:Ljava/io/InputStreamReader;
    goto :goto_3

    .line 639
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #line:Ljava/lang/String;
    .restart local v3       #ex:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 640
    .restart local v2       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->access$000()Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Close input stream failed, Reason : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 632
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 633
    :goto_4
    if-eqz v0, :cond_8

    .line 634
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 635
    :cond_8
    if-eqz v4, :cond_9

    .line 636
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 637
    :cond_9
    if-eqz v6, :cond_a

    .line 638
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 641
    :cond_a
    :goto_5
    throw v8

    .line 639
    :catch_3
    move-exception v2

    .line 640
    .restart local v2       #e:Ljava/io/IOException;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->access$000()Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Close input stream failed, Reason : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 632
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fr:Ljava/io/InputStreamReader;
    .restart local v5       #fr:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #fr:Ljava/io/InputStreamReader;
    .restart local v4       #fr:Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/InputStreamReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/InputStreamReader;
    .restart local v7       #line:Ljava/lang/String;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/InputStreamReader;
    .restart local v4       #fr:Ljava/io/InputStreamReader;
    goto :goto_4

    .line 629
    .end local v7           #line:Ljava/lang/String;
    :catch_4
    move-exception v3

    goto/16 :goto_2

    .end local v4           #fr:Ljava/io/InputStreamReader;
    .restart local v5       #fr:Ljava/io/InputStreamReader;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/InputStreamReader;
    .restart local v4       #fr:Ljava/io/InputStreamReader;
    goto/16 :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 593
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider;->access$000()Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 594
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 596
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 600
    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 601
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/provider/ForecastProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 603
    :cond_0
    return-void
.end method
