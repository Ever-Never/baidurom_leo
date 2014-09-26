.class Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;
.super Landroid/os/Handler;
.source "StatusBarForceShowHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_CHECK_HIDE:I = 0x2

.field public static final MSG_FORCE_SHOW:I = 0x0

.field public static final MSG_HIDE_IF_NEEDED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;-><init>(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    const/4 v1, 0x1

    #calls: Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->updateViewParam(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->access$100(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;Z)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    #calls: Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->isExpandViewShown()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->access$200(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    #calls: Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->updateViewParam(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->access$100(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;Z)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    #calls: Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->isExpandViewShown()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->access$200(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    #calls: Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->updateViewParam(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->access$100(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;Z)V

    goto :goto_0

    .line 108
    :cond_1
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
