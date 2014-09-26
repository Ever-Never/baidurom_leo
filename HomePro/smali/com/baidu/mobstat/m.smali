.class Lcom/baidu/mobstat/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobstat/l;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/l;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    iput-object p2, p0, Lcom/baidu/mobstat/m;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/baidu/mobstat/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/w;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    iget-object v1, p0, Lcom/baidu/mobstat/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/l;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    const-string v2, "exceptionanalysisflag"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/l;->a(Lcom/baidu/mobstat/l;Z)Z

    iget-object v1, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    invoke-static {v1}, Lcom/baidu/mobstat/l;->a(Lcom/baidu/mobstat/l;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/baidu/mobstat/j;->a()Lcom/baidu/mobstat/j;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/m;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/j;->b(Landroid/content/Context;)V

    :cond_1
    iget-object v1, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    invoke-static {v1}, Lcom/baidu/mobstat/l;->b(Lcom/baidu/mobstat/l;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    invoke-static {v1}, Lcom/baidu/mobstat/l;->b(Lcom/baidu/mobstat/l;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/baidu/mobstat/l;->a(Lcom/baidu/mobstat/l;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_2
    iget-object v1, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    invoke-static {}, Lcom/baidu/mobstat/SendStrategyEnum;->values()[Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v2

    const-string v3, "sendLogtype"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/baidu/mobstat/l;->a(Lcom/baidu/mobstat/l;Lcom/baidu/mobstat/SendStrategyEnum;)Lcom/baidu/mobstat/SendStrategyEnum;

    iget-object v1, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    const-string v2, "timeinterval"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/l;->a(Lcom/baidu/mobstat/l;I)I

    iget-object v1, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    const-string v2, "onlywifi"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/l;->b(Lcom/baidu/mobstat/l;Z)Z

    iget-object v0, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    invoke-static {v0}, Lcom/baidu/mobstat/l;->c(Lcom/baidu/mobstat/l;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    iget-object v1, p0, Lcom/baidu/mobstat/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/l;->e(Landroid/content/Context;)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/baidu/mobstat/l;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobstat/n;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/n;-><init>(Lcom/baidu/mobstat/m;)V

    iget-object v2, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    invoke-static {v2}, Lcom/baidu/mobstat/l;->e(Lcom/baidu/mobstat/l;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    invoke-static {v0}, Lcom/baidu/mobstat/l;->c(Lcom/baidu/mobstat/l;)Lcom/baidu/mobstat/SendStrategyEnum;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/SendStrategyEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mobstat/m;->b:Lcom/baidu/mobstat/l;

    iget-object v1, p0, Lcom/baidu/mobstat/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/l;->e(Landroid/content/Context;)V

    goto :goto_1
.end method
