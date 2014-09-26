.class Lcom/android/systemui/statusbar/util/TransparentHelper$2;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/util/TransparentHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$2;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$2;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/statusbar/util/TransparentHelper;->mLockState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/util/TransparentHelper;->access$002(Lcom/android/systemui/statusbar/util/TransparentHelper;Z)Z

    .line 115
    return-void
.end method
