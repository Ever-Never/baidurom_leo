.class public Lcom/android/systemui/statusbar/phone/CarrierLabel;
.super Landroid/widget/TextView;
.source "CarrierLabel.java"


# instance fields
.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mPlmn:Ljava/lang/String;

.field mShowPlmn:Z

.field mShowSpn:Z

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field mSpn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowSpn:Z

    .line 52
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpn:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowPlmn:Z

    .line 54
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmn:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 67
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/CarrierLabel;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 73
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    .line 89
    :cond_0
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 129
    if-eqz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    .line 130
    .local v0, plmnValid:Z
    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    .local v1, spnValid:Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, str:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .end local v2           #str:Ljava/lang/String;
    :cond_0
    move v0, v3

    .line 129
    goto :goto_0

    .restart local v0       #plmnValid:Z
    :cond_1
    move v1, v3

    .line 130
    goto :goto_1

    .line 133
    .restart local v1       #spnValid:Z
    :cond_2
    if-eqz v0, :cond_3

    .line 134
    move-object v2, p4

    .restart local v2       #str:Ljava/lang/String;
    goto :goto_2

    .line 135
    .end local v2           #str:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    .line 136
    move-object v2, p2

    .restart local v2       #str:Ljava/lang/String;
    goto :goto_2

    .line 138
    .end local v2           #str:Ljava/lang/String;
    :cond_4
    const-string v2, ""

    .restart local v2       #str:Ljava/lang/String;
    goto :goto_2
.end method

.method updateNetworkNameBySimState()V
    .locals 4

    .prologue
    .line 115
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccCardConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const v0, 0x10402f5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowSpn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSpn:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mShowPlmn:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mPlmn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method
