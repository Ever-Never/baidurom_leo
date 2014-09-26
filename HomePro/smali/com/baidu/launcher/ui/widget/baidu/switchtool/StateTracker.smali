.class public abstract Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
.super Ljava/lang/Object;
.source "StateTracker.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/switchtool/SettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;
    }
.end annotation


# static fields
.field public static final IND_DRAWABLE_MID:[I = null

.field public static final IND_DRAWABLE_OFF:[I = null

.field public static final IND_DRAWABLE_ON:[I = null

.field private static final POS_CENTER:I = 0x1

.field private static final POS_LEFT:I = 0x0

.field private static final POS_RIGHT:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActualState:Ljava/lang/Boolean;

.field private mAttachedSwitchCellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;

.field private mInterestBroadcastAction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterestObserverUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->IND_DRAWABLE_OFF:[I

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->IND_DRAWABLE_MID:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->IND_DRAWABLE_ON:[I

    return-void

    .line 23
    nop

    :array_0
    .array-data 0x4
        0x90t 0x1t 0x2t 0x7ft
        0x90t 0x1t 0x2t 0x7ft
        0x90t 0x1t 0x2t 0x7ft
    .end array-data

    .line 28
    :array_1
    .array-data 0x4
        0x8ft 0x1t 0x2t 0x7ft
        0x8ft 0x1t 0x2t 0x7ft
        0x8ft 0x1t 0x2t 0x7ft
    .end array-data

    .line 33
    :array_2
    .array-data 0x4
        0x91t 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
        0x91t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "StateTracker"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mAttachedSwitchCellList:Ljava/util/ArrayList;

    .line 38
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInTransition:Z

    .line 39
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 40
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 46
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 48
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestBroadcastAction:Ljava/util/ArrayList;

    .line 49
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestObserverUri:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method private updateAttachedSwitch()V
    .locals 3

    .prologue
    .line 324
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mAttachedSwitchCellList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;

    .line 325
    .local v0, aSwitch:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->setImageViewResources(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V

    goto :goto_0

    .line 327
    .end local v0           #aSwitch:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttachedSwitch(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V
    .locals 1
    .parameter "aSwitch"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mAttachedSwitchCellList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->setImageViewResources(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V

    .line 316
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->setTextViewResource(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V

    .line 317
    return-void
.end method

.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f0801c1

    return v0
.end method

.method public abstract getButtonImageId(Z)I
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 124
    const v0, 0x7f0801c2

    return v0
.end method

.method public getInterestBroadcastAction()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestBroadcastAction:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestBroadcastAction:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestBroadcastAction:Ljava/util/ArrayList;

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterestObserverChangedUri()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestObserverUri:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestObserverUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestObserverUri:Ljava/util/ArrayList;

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f0801c3

    return v0
.end method

.method public abstract getTitleStringId()I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 259
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 277
    :goto_0
    return v0

    .line 269
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 271
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public onChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "selfChange"

    .prologue
    .line 338
    const-string v0, "StateTracker"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 340
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->updateAttachedSwitch()V

    .line 341
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 331
    const-string v0, "StateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 333
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->updateAttachedSwitch()V

    .line 334
    return-void
.end method

.method protected registerBroadcastAction(Ljava/lang/String;)V
    .locals 1
    .parameter "aInterest"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestBroadcastAction:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestBroadcastAction:Ljava/util/ArrayList;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestBroadcastAction:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method protected registerObserverUri(Ljava/lang/String;Z)V
    .locals 2
    .parameter "aInterest"
    .parameter "aIsSecure"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestObserverUri:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestObserverUri:Ljava/util/ArrayList;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInterestObserverUri:Ljava/util/ArrayList;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;

    invoke-direct {v1, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker$ObserverUri;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public removeAttachedSwitch(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V
    .locals 1
    .parameter "aSwitch"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mAttachedSwitchCellList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 211
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInTransition:Z

    .line 212
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 231
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 232
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 242
    :cond_1
    return-void

    .line 214
    :pswitch_0
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInTransition:Z

    .line 215
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 218
    :pswitch_1
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInTransition:Z

    .line 219
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 222
    :pswitch_2
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInTransition:Z

    .line 223
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 226
    :pswitch_3
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInTransition:Z

    .line 227
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 236
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInTransition:Z

    .line 237
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setImageViewResources(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V
    .locals 6
    .parameter "aContext"
    .parameter "aSwitch"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getButtonId()I

    move-result v0

    .line 159
    .local v0, buttonId:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getIndicatorId()I

    move-result v1

    .line 160
    .local v1, indicatorId:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getPosition()I

    move-result v2

    .line 168
    .local v2, pos:I
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 192
    :goto_0
    :pswitch_0
    return-void

    .line 170
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 171
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->IND_DRAWABLE_OFF:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 174
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 175
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->IND_DRAWABLE_ON:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 179
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 180
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->IND_DRAWABLE_OFF:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 183
    :pswitch_4
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->isTurningOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 185
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->IND_DRAWABLE_MID:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 188
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->IND_DRAWABLE_OFF:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setTextViewResource(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V
    .locals 2
    .parameter "aSwitch"

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getTitleId()I

    move-result v0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getTitleStringId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setTextViewResource(II)V

    .line 196
    return-void
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 83
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 84
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 101
    iget-boolean v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2

    .line 106
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 111
    :goto_1
    :pswitch_1
    return-void

    .line 86
    :pswitch_2
    const/4 v1, 0x0

    .line 87
    goto :goto_0

    .line 89
    :pswitch_3
    const/4 v1, 0x1

    .line 90
    goto :goto_0

    .line 92
    :pswitch_4
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 108
    :cond_2
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->mInTransition:Z

    .line 109
    invoke-virtual {p0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
