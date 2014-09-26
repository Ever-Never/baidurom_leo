.class Lcom/android/systemui/statusbar/switcher/DataSlotTracker$2;
.super Landroid/os/Handler;
.source "DataSlotTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/DataSlotTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/DataSlotTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/DataSlotTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker$2;->this$0:Lcom/android/systemui/statusbar/switcher/DataSlotTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker$2;->this$0:Lcom/android/systemui/statusbar/switcher/DataSlotTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker$2;->this$0:Lcom/android/systemui/statusbar/switcher/DataSlotTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->access$000(Lcom/android/systemui/statusbar/switcher/DataSlotTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->updateStatus(Landroid/content/Context;)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
