.class public Lcom/inveno/newpiflow/widget/PiScrollView;
.super Lcom/inveno/newpiflow/widget/FadeScrollView;
.source "PiScrollView.java"

# interfaces
.implements Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;,
        Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;
    }
.end annotation


# static fields
.field public static final LOAD_DIS:I = 0x64

.field public static final MEMORY_THRESHOLD:I = 0x80000

.field public static final MESSAGE_LOAD_DATA:I = 0x1

.field public static final MESSAGE_LOAD_DATA_FAILED:I = 0x2

.field public static final MESSAGE_LOAD_DATA_SUCCESS:I = 0x0

.field public static final MODE_IMG:I = 0x4

.field public static final MODE_SMART:I = 0x3

.field public static final MODE_TEXT:I = 0x5

.field public static final STYLE_CARD:I = 0x0

.field public static final STYLE_FLOW:I = 0x1

.field public static final STYLE_LIST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PiScrollView"

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_WHITE:I


# instance fields
.field private cancle:Z

.field private currentMode:I

.field private currentStyle:I

.field private currentTheme:I

.field private dataGetThread:Ljava/lang/Thread;

.field private dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

.field private deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

.field private factoryLock:Ljava/lang/Object;

.field private factoryThread:Ljava/lang/Thread;

.field private isPiDataNull:Z

.field private isRefreshData:Z

.field private loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

.field private mContext:Landroid/content/Context;

.field private mPiMainView:Lcom/inveno/newpiflow/widget/PiMainView;

.field private mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

.field private mUiHandler:Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;

.field private theme:[I

.field private uiLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;)V
    .locals 4
    .parameter "context"
    .parameter "bitmapUtils"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/widget/FadeScrollView;-><init>(Landroid/content/Context;)V

    .line 75
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->theme:[I

    .line 82
    iput v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentStyle:I

    iput v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    iput v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->uiLock:Ljava/lang/Object;

    .line 126
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->isLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->init(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;II)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/inveno/newpiflow/widget/PiScrollView;->init(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;II)V

    goto :goto_0

    .line 75
    :array_0
    .array-data 0x4
        0x46t 0x0t 0xat 0x7ft
        0x45t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;II)V
    .locals 2
    .parameter "context"
    .parameter "bitmapUtils"
    .parameter "style"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/widget/FadeScrollView;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->theme:[I

    .line 82
    iput v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentStyle:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    iput v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->uiLock:Ljava/lang/Object;

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inveno/newpiflow/widget/PiScrollView;->init(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;II)V

    .line 137
    return-void

    .line 75
    nop

    :array_0
    .array-data 0x4
        0x46t 0x0t 0xat 0x7ft
        0x45t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method static synthetic access$100(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/StrenchListview;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mUiHandler:Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/PiMainView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mPiMainView:Lcom/inveno/newpiflow/widget/PiMainView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/inveno/newpiflow/widget/PiScrollView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->uiLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inveno/newpiflow/widget/PiScrollView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/inveno/newpiflow/widget/PiScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->isPiDataNull:Z

    return v0
.end method

.method static synthetic access$502(Lcom/inveno/newpiflow/widget/PiScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->isPiDataNull:Z

    return p1
.end method

.method static synthetic access$600(Lcom/inveno/newpiflow/widget/PiScrollView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/inveno/newpiflow/widget/PiScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->cancle:Z

    return v0
.end method

.method static synthetic access$702(Lcom/inveno/newpiflow/widget/PiScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->cancle:Z

    return p1
.end method

.method static synthetic access$800(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/download/LoadFlowJsonTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    return-object v0
.end method

.method static synthetic access$900(Lcom/inveno/newpiflow/widget/PiScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->isRefreshData:Z

    return v0
.end method

.method static synthetic access$902(Lcom/inveno/newpiflow/widget/PiScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->isRefreshData:Z

    return p1
.end method

.method private changeTheme(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "theme"

    .prologue
    const/16 v3, 0xff

    const/4 v1, 0x0

    .line 589
    iput p2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    .line 591
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->theme:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 592
    packed-switch p2, :pswitch_data_0

    .line 600
    :goto_0
    return-void

    .line 594
    :pswitch_0
    const/16 v0, 0xe7

    const/16 v1, 0xe8

    const/16 v2, 0xe9

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->setBackgroundColor(I)V

    goto :goto_0

    .line 597
    :pswitch_1
    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->setBackgroundColor(I)V

    goto :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;II)V
    .locals 3
    .parameter "context"
    .parameter "bitmapUtils"
    .parameter "style"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 141
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 143
    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 147
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/DeviceConfig;->getInstance(Landroid/content/Context;)Lcom/inveno/newpiflow/tools/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    .line 148
    iput p3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentStyle:I

    .line 149
    iput p4, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->setFillViewport(Z)V

    .line 152
    const-string v0, "theme"

    invoke-static {v0, v1, p1}, Lcom/inveno/newpiflow/tools/Tools;->getInformain(Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    .line 155
    new-instance v0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;

    invoke-direct {v0, p0, p0}, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;-><init>(Lcom/inveno/newpiflow/widget/PiScrollView;Lcom/inveno/newpiflow/widget/PiScrollView;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mUiHandler:Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;

    .line 156
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    invoke-direct {p0, p1, v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->changeTheme(Landroid/content/Context;I)V

    .line 157
    if-nez p2, :cond_0

    .line 158
    new-instance p2, Lcom/inveno/flyshare/BitmapUtils;

    .end local p2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/inveno/flyshare/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    .restart local p2
    :cond_0
    new-instance v0, Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2, p0}, Lcom/inveno/newpiflow/widget/StrenchListview;-><init>(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;Lcom/inveno/newpiflow/animation/Animation3DBoxControl;Lcom/inveno/newpiflow/widget/PiScrollView;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    .line 162
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {p0, v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->addView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/newpiflow/tools/AdUtil;->isUsed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->initTasks()V

    .line 166
    :cond_1
    return-void
.end method

.method private isLowMemory()Z
    .locals 10

    .prologue
    .line 761
    const-wide/16 v6, 0x0

    .line 762
    .local v6, total_mem:J
    const-string v5, "/proc/meminfo"

    .line 763
    .local v5, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 764
    .local v2, content:Ljava/lang/String;
    const/4 v0, 0x0

    .line 767
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x8

    invoke-direct {v1, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 770
    move-object v2, v4

    .line 775
    :cond_0
    if-eqz v1, :cond_1

    .line 777
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v0, v1

    .line 784
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const-string v9, "k"

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 788
    const-wide/32 v8, 0x80000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_4

    .line 789
    const/4 v8, 0x0

    .line 791
    :goto_2
    return v8

    .line 772
    :catch_0
    move-exception v3

    .line 773
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 775
    if-eqz v0, :cond_2

    .line 777
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 778
    :catch_1
    move-exception v3

    .line 779
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 775
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_3

    .line 777
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 775
    :cond_3
    :goto_5
    throw v8

    .line 791
    :cond_4
    const/4 v8, 0x1

    goto :goto_2

    .line 778
    :catch_2
    move-exception v3

    .line 779
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 778
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 779
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 775
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #line:Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 772
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    invoke-virtual {v1}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->release()V

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 424
    :cond_2
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataGetThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    .line 425
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataGetThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 426
    iput-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    .line 427
    iput-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataGetThread:Ljava/lang/Thread;

    .line 429
    :cond_3
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PiScrollView"

    const-string v2, "\u4fdd\u5b58\u6700\u540e\u4e00\u9875\u5230sd\u5361\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stayData()Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .locals 6

    .prologue
    .line 666
    new-instance v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    invoke-direct {v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;-><init>()V

    .line 667
    .local v0, flowNews:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v5, v5, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v5, v5, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 670
    iget-object v5, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v5, v5, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inveno/newpiflow/widget/PiWindowView;

    iget-object v4, v5, Lcom/inveno/newpiflow/widget/PiWindowView;->mChilds:Ljava/util/ArrayList;

    .line 671
    .local v4, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 672
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 673
    .local v2, piDataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    if-eqz v2, :cond_0

    .line 674
    invoke-virtual {v2}, Lcom/inveno/newpiflow/model/PiDataItem;->getFlowNewinfo()Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->add(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V

    goto :goto_0

    .line 678
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #piDataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .end local v3           #v:Landroid/view/View;
    .end local v4           #views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    return-object v0
.end method


# virtual methods
.method public changeCurrentMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 729
    iput p1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    .line 730
    return-void
.end method

.method public changeMode(I)V
    .locals 12
    .parameter "mode"

    .prologue
    .line 687
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v2, v2, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v2, v2, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    if-eq p1, v2, :cond_0

    .line 692
    iput p1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    .line 693
    const/4 v10, 0x0

    .line 694
    .local v10, newInfos:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;
    invoke-static {v2}, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->access$1100(Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;)Lcom/inveno/newpiflow/model/PiData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 695
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;
    invoke-static {v2}, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->access$1100(Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;)Lcom/inveno/newpiflow/model/PiData;

    move-result-object v2

    iget-object v10, v2, Lcom/inveno/newpiflow/model/PiData;->mNewInfos:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    .line 697
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 722
    :goto_1
    if-eqz v10, :cond_0

    .line 723
    iget-object v11, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    new-instance v2, Lcom/inveno/newpiflow/model/PiData;

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v4, v3, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v5, v3, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    iget v6, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentStyle:I

    iget v7, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    iget v8, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v2 .. v9}, Lcom/inveno/newpiflow/model/PiData;-><init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;IIIIILandroid/content/Context;)V

    invoke-virtual {v11, v2}, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->setPiData(Lcom/inveno/newpiflow/model/PiData;)V

    goto :goto_0

    .line 699
    :pswitch_0
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->setPiData(Lcom/inveno/newpiflow/model/PiData;)V

    .line 700
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->stayData()Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    move-result-object v1

    .line 701
    .local v1, flowNew:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v2}, Lcom/inveno/newpiflow/widget/StrenchListview;->removeAllItemAndClear()V

    .line 703
    new-instance v0, Lcom/inveno/newpiflow/model/PiData;

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v2, v2, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v3, v3, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    iget v4, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentStyle:I

    iget v5, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    iget v6, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/inveno/newpiflow/model/PiData;-><init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;IIIIILandroid/content/Context;)V

    .line 705
    .local v0, data:Lcom/inveno/newpiflow/model/PiData;
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    iget v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    invoke-virtual {v2, v3}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->setMode(I)V

    .line 706
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v2, v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->setData(Lcom/inveno/newpiflow/model/PiData;)V

    .line 707
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;

    monitor-enter v3

    .line 708
    :try_start_0
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 709
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 712
    .end local v0           #data:Lcom/inveno/newpiflow/model/PiData;
    .end local v1           #flowNew:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    :pswitch_1
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    iget v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    invoke-virtual {v2, v3}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->setMode(I)V

    .line 713
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/inveno/newpiflow/widget/PiScrollView;->changeStyle(I)V

    .line 715
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u5207\u6362\u6210\u667a\u80fd\u6a21\u5f0f\uff0cWIFI\u7f51\u7edc\u4e0b\u624d\u52a0\u8f7d\u56fe\u7247"

    invoke-static {v2, v3}, Lcom/inveno/newpiflow/tools/ToastTools;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 718
    :pswitch_2
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    iget v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    invoke-virtual {v2, v3}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->setMode(I)V

    .line 719
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/inveno/newpiflow/widget/PiScrollView;->changeStyle(I)V

    goto :goto_1

    .line 697
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeStyle(I)V
    .locals 8
    .parameter "style"

    .prologue
    .line 630
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v2, v2, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v2, v2, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentStyle:I

    if-eq p1, v2, :cond_0

    .line 635
    iput p1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentStyle:I

    .line 636
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->setPiData(Lcom/inveno/newpiflow/model/PiData;)V

    .line 637
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->stayData()Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    move-result-object v1

    .line 638
    .local v1, flowNews:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v2}, Lcom/inveno/newpiflow/widget/StrenchListview;->removeAllItemAndClear()V

    .line 639
    const/4 v0, 0x0

    .line 641
    .local v0, data:Lcom/inveno/newpiflow/model/PiData;
    packed-switch p1, :pswitch_data_0

    .line 654
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    invoke-virtual {v2, p1}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->setStyle(I)V

    .line 655
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v2, v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->setData(Lcom/inveno/newpiflow/model/PiData;)V

    .line 656
    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;

    monitor-enter v3

    .line 657
    :try_start_0
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 658
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 643
    :pswitch_1
    new-instance v0, Lcom/inveno/newpiflow/model/PiData;

    .end local v0           #data:Lcom/inveno/newpiflow/model/PiData;
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v2, v2, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v3, v3, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    iget v6, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/inveno/newpiflow/model/PiData;-><init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;IIIIILandroid/content/Context;)V

    .line 645
    .restart local v0       #data:Lcom/inveno/newpiflow/model/PiData;
    goto :goto_1

    .line 649
    :pswitch_2
    new-instance v0, Lcom/inveno/newpiflow/model/PiData;

    .end local v0           #data:Lcom/inveno/newpiflow/model/PiData;
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v2, v2, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v3, v3, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    const/4 v4, 0x2

    iget v5, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    iget v6, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/inveno/newpiflow/model/PiData;-><init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;IIIIILandroid/content/Context;)V

    .restart local v0       #data:Lcom/inveno/newpiflow/model/PiData;
    goto :goto_1

    .line 641
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public changeThemeAndReset(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v0, v0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v0, v0, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/inveno/newpiflow/widget/PiScrollView;->changeTheme(Landroid/content/Context;I)V

    .line 612
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->stayData()Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    move-result-object v1

    .line 613
    .local v1, flowNews:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->removeAllItemAndClear()V

    .line 614
    iget-object v8, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    new-instance v0, Lcom/inveno/newpiflow/model/PiData;

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v2, v2, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v3, v3, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    iget v4, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentStyle:I

    iget v5, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    iget v6, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/inveno/newpiflow/model/PiData;-><init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;IIIIILandroid/content/Context;)V

    invoke-virtual {v8, v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->setData(Lcom/inveno/newpiflow/model/PiData;)V

    .line 617
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    iget v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    invoke-virtual {v0, v2}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->setTheme(I)V

    .line 618
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->setPiData(Lcom/inveno/newpiflow/model/PiData;)V

    .line 619
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 621
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->removeAllItemAndClear()V

    .line 749
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->onScrolling(I)V

    .line 243
    invoke-super {p0}, Lcom/inveno/newpiflow/widget/FadeScrollView;->computeScroll()V

    .line 244
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "paramCanvas"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-boolean v0, v0, Lcom/inveno/newpiflow/widget/StrenchListview;->mShowWelcome:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/inveno/newpiflow/widget/PiScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 250
    :cond_0
    invoke-super {p0, p1}, Lcom/inveno/newpiflow/widget/FadeScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 251
    return-void
.end method

.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    return v0
.end method

.method public getCurrentStyle()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentStyle:I

    return v0
.end method

.method public getCurrentTheme()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    return v0
.end method

.method public getStrenchListview()Lcom/inveno/newpiflow/widget/StrenchListview;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    return-object v0
.end method

.method public initTasks()V
    .locals 7

    .prologue
    .line 168
    new-instance v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->uiLock:Ljava/lang/Object;

    iget v4, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentStyle:I

    iget v5, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    iget v6, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentTheme:I

    invoke-direct/range {v0 .. v6}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;III)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    .line 170
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    invoke-virtual {v0, p0}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->addUpdateListener(Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;)V

    .line 171
    new-instance v0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;-><init>(Lcom/inveno/newpiflow/widget/PiScrollView;Lcom/inveno/newpiflow/widget/PiScrollView$1;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    .line 172
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryThread:Ljava/lang/Thread;

    .line 173
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataTask:Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataGetThread:Ljava/lang/Thread;

    .line 174
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->factoryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->dataGetThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Lcom/inveno/newpiflow/widget/FadeScrollView;->onAttachedToWindow()V

    .line 392
    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiMainView;

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mPiMainView:Lcom/inveno/newpiflow/widget/PiMainView;

    .line 393
    return-void
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->onClose()V

    .line 757
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 397
    invoke-super {p0}, Lcom/inveno/newpiflow/widget/FadeScrollView;->onDetachedFromWindow()V

    .line 398
    invoke-direct {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->release()V

    .line 399
    return-void
.end method

.method public onLoadFailed()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mUiHandler:Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->sendEmptyMessage(I)Z

    .line 404
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->onLoadFailed()V

    .line 405
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/inveno/newpiflow/widget/FadeScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 230
    :pswitch_0
    iget v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->currentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isWifiConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {p0}, Lcom/inveno/newpiflow/widget/PiScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->checkFailBitmap(I)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshData()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 476
    invoke-static {}, Lcom/inveno/newpiflow/tools/InvenoUBC;->statForRefreshInfo()V

    .line 477
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mUiHandler:Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->sendEmptyMessage(I)Z

    .line 478
    iput-boolean v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->isRefreshData:Z

    .line 481
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView;->mPiMainView:Lcom/inveno/newpiflow/widget/PiMainView;

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->getPullRefreshView()Lcom/inveno/newpiflow/widget/PullToRefreshView;

    move-result-object v0

    new-instance v1, Lcom/inveno/newpiflow/widget/PiScrollView$1;

    invoke-direct {v1, p0}, Lcom/inveno/newpiflow/widget/PiScrollView$1;-><init>(Lcom/inveno/newpiflow/widget/PiScrollView;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    return-void
.end method
