.class Lcom/android/systemui/statusbar/holiday/GifView$2;
.super Landroid/os/Handler;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/holiday/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/holiday/GifView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/holiday/GifView;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifView$2;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$2;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/holiday/GifView;->invalidate()V

    .line 504
    return-void
.end method
