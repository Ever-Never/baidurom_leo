.class public Lcom/inveno/flyshare/utils/LogTools;
.super Ljava/lang/Object;
.source "LogTools.java"


# static fields
.field private static OPENLOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inveno/flyshare/utils/LogTools;->OPENLOG:Z

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showLog(Ljava/lang/String;)V
    .locals 1
    .parameter "tmp"

    .prologue
    .line 34
    sget-boolean v0, Lcom/inveno/flyshare/utils/LogTools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "info"

    invoke-static {v0, p0}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method

.method public static showLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "TAG"
    .parameter "tmp"

    .prologue
    .line 24
    sget-boolean v0, Lcom/inveno/flyshare/utils/LogTools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "======"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    return-void
.end method

.method public static showLogA(Ljava/lang/String;)V
    .locals 1
    .parameter "tmp"

    .prologue
    .line 44
    sget-boolean v0, Lcom/inveno/flyshare/utils/LogTools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "blueming.liu"

    invoke-static {v0, p0}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static showLogB(Ljava/lang/String;)V
    .locals 1
    .parameter "tmp"

    .prologue
    .line 39
    sget-boolean v0, Lcom/inveno/flyshare/utils/LogTools;->OPENLOG:Z

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "blueming.wu"

    invoke-static {v0, p0}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method
