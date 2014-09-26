.class public Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;
.super Ljava/lang/Object;
.source "TrafficView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TrafficView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrafficManager"
.end annotation


# instance fields
.field private hasSimReady:Z

.field private mCurSlotId:I

.field private mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TrafficView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/TrafficView;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    .line 89
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    new-instance v3, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;-><init>(Lcom/android/systemui/statusbar/phone/TrafficView;Lcom/android/systemui/statusbar/phone/TrafficView$1;)V

    aput-object v3, v2, v0

    new-instance v3, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;-><init>(Lcom/android/systemui/statusbar/phone/TrafficView;Lcom/android/systemui/statusbar/phone/TrafficView$1;)V

    aput-object v3, v2, v1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    .line 90
    invoke-static {}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->hasSimReady:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    return v0
.end method


# virtual methods
.method public getCurSlotId()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    return v0
.end method

.method public getCurrentSimColor()I
    .locals 3

    .prologue
    .line 145
    iget v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/TrafficView;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentSimNameString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$100()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 140
    :goto_0
    return-object v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;->mSimName:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->hasSimReady:Z

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    invoke-static {v1, v2}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-result-object v0

    .line 136
    .local v0, info:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    if-eqz v0, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    aget-object v1, v1, v2

    iget-object v2, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;->mSimName:Ljava/lang/String;

    .line 140
    .end local v0           #info:Landroid/telephony/BaiduTelephonyUtils$SIMInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;->mSimName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onTrafficChanged(JJJI)V
    .locals 3
    .parameter "total"
    .parameter "month"
    .parameter "day"
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    aget-object v1, v1, p7

    iput-wide p1, v1, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;->mTrafficPackage:J

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    aget-object v1, v1, p7

    iput-wide p3, v1, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;->mTrafficMonth:J

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    aget-object v1, v1, p7

    iput-wide p5, v1, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;->mTrafficDay:J

    .line 98
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->hasSimReady:Z

    if-nez v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    #getter for: Lcom/android/systemui/statusbar/phone/TrafficView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/TrafficView;->access$200(Lcom/android/systemui/statusbar/phone/TrafficView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/BaiduTelephonyUtils;->getPreferredDataSlot(Landroid/content/Context;)I

    move-result v0

    .line 100
    .local v0, tempSlot:I
    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 101
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    .line 103
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->hasSimReady:Z

    .line 107
    .end local v0           #tempSlot:I
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    if-ne p7, v1, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->updateUI()V

    .line 110
    :cond_3
    return-void
.end method

.method public setCurrentSimId(I)V
    .locals 1
    .parameter "slotId"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->updateUI()V

    goto :goto_0
.end method

.method public updateSimName(Landroid/telephony/BaiduTelephonyUtils$SIMInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 159
    iget v0, p1, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSlot:I

    .line 160
    .local v0, slotId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;->mSimName:Ljava/lang/String;

    .line 162
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    if-ne v0, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->updateUI()V

    .line 166
    :cond_0
    return-void
.end method

.method public updateUI()V
    .locals 7

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;->mTrafficPackage:J

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    aget-object v3, v3, v4

    iget-wide v3, v3, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;->mTrafficMonth:J

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mSimTrafficInfo:[Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/TrafficView$TrafficManager;->mCurSlotId:I

    aget-object v5, v5, v6

    iget-wide v5, v5, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;->mTrafficDay:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/TrafficView;->setTrafficState(JJJ)V

    .line 121
    return-void
.end method
