.class Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView$1;
.super Ljava/lang/Object;
.source "MyHorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->moveToCenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView$1;->this$0:Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView$1;->this$0:Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/MyHorizontalScrollView;->scrollItem(I)V

    .line 27
    return-void
.end method
