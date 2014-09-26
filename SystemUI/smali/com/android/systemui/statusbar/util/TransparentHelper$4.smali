.class Lcom/android/systemui/statusbar/util/TransparentHelper$4;
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
    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$4;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$4;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    const/16 v1, 0xff

    #setter for: Lcom/android/systemui/statusbar/util/TransparentHelper;->mHomeTransluentRate:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/util/TransparentHelper;->access$102(Lcom/android/systemui/statusbar/util/TransparentHelper;I)I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$4;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper$4;->this$0:Lcom/android/systemui/statusbar/util/TransparentHelper;

    #getter for: Lcom/android/systemui/statusbar/util/TransparentHelper;->mHomeTransluentRate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/util/TransparentHelper;->access$100(Lcom/android/systemui/statusbar/util/TransparentHelper;)I

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/android/systemui/statusbar/util/TransparentHelper;->animateTransparent(II)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/util/TransparentHelper;->access$300(Lcom/android/systemui/statusbar/util/TransparentHelper;II)V

    .line 131
    return-void
.end method
