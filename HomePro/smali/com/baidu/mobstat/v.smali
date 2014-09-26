.class Lcom/baidu/mobstat/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/s;

.field private b:J

.field private c:J

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/s;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Z)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/baidu/mobstat/v;->b:J

    iput-wide p4, p0, Lcom/baidu/mobstat/v;->c:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/v;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/v;->e:Ljava/lang/ref/WeakReference;

    iput-boolean p8, p0, Lcom/baidu/mobstat/v;->f:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lcom/baidu/mobstat/v;->c:J

    iget-wide v2, p0, Lcom/baidu/mobstat/v;->b:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/s;

    invoke-virtual {v2}, Lcom/baidu/mobstat/s;->a()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/baidu/mobstat/v;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/v;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/v;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/s;

    invoke-static {v0}, Lcom/baidu/mobstat/s;->a(Lcom/baidu/mobstat/s;)Lcom/baidu/mobstat/q;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/mobstat/v;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/q;->b(J)V

    iget-object v0, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/s;

    invoke-static {v0}, Lcom/baidu/mobstat/s;->a(Lcom/baidu/mobstat/s;)Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/q;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/b;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/mobstat/v;->f:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/mobstat/v;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/b;->b(Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/s;

    invoke-static {v0}, Lcom/baidu/mobstat/s;->a(Lcom/baidu/mobstat/s;)Lcom/baidu/mobstat/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/q;->b()V

    iget-boolean v0, p0, Lcom/baidu/mobstat/v;->f:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/s;

    iget-object v0, p0, Lcom/baidu/mobstat/v;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/mobstat/s;->a(Lcom/baidu/mobstat/s;Landroid/content/Context;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/b;->a()Lcom/baidu/mobstat/b;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/mobstat/v;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/b;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/baidu/mobstat/v;->a:Lcom/baidu/mobstat/s;

    iget-object v0, p0, Lcom/baidu/mobstat/v;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobstat/s;->a(Lcom/baidu/mobstat/s;Landroid/content/Context;)V

    goto :goto_1
.end method
