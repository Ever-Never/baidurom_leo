.class public Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;
.super Ljava/lang/Object;
.source "MyLogger.java"


# static fields
.field private static final NEW_LINE:Ljava/lang/String; = "\n"

.field private static sIsLoggerEnable:Z

.field private static sLoggerTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->sIsLoggerEnable:Z

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->tag:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public static disableLog()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->sIsLoggerEnable:Z

    .line 53
    return-void
.end method

.method public static enableLog()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->sIsLoggerEnable:Z

    .line 50
    return-void
.end method

.method public static declared-synchronized getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;
    .locals 3
    .parameter "tag"

    .prologue
    .line 40
    const-class v2, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    .line 41
    .local v0, myLogger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;
    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    .end local v0           #myLogger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;
    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;-><init>(Ljava/lang/String;)V

    .line 43
    .restart local v0       #myLogger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->sLoggerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit v2

    return-object v0

    .line 40
    .end local v0           #myLogger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 70
    sget-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "log"
    .parameter "tr"

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 112
    sget-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "log"
    .parameter "tr"

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 84
    sget-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "log"
    .parameter "tr"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->i(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 56
    sget-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "log"
    .parameter "tr"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->v(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 98
    sget-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->sIsLoggerEnable:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "log"
    .parameter "tr"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->w(Ljava/lang/String;)V

    .line 109
    return-void
.end method
