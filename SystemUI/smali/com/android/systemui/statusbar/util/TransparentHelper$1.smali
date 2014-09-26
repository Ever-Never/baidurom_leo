.class Lcom/android/systemui/statusbar/util/TransparentHelper$1;
.super Ljava/lang/Object;
.source "TransparentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/util/TransparentHelper;->setStatusBarTransparent(ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/util/TransparentHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$1;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    iput p2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$1;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;-><init>(Lcom/android/systemui/statusbar/util/TransparentHelper;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$1;->val$index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method
