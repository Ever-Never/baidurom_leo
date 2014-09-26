.class final Lcom/baidu/launcher/utils/LogEx$1;
.super Ljava/lang/Object;
.source "LogEx.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/utils/LogEx;->collectApplicationCrash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/baidu/launcher/utils/LogEx$1;->val$originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 443
    const/4 v0, 0x6

    const-string v1, "Crash"

    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->getAppInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->flush()V

    .line 445
    iget-object v0, p0, Lcom/baidu/launcher/utils/LogEx$1;->val$originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/baidu/launcher/utils/LogEx$1;->val$originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 448
    :cond_0
    return-void
.end method
