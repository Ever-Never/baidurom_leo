.class public Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;
    }
.end annotation


# static fields
.field static final CHATTY:Z = false

.field static final DEBUG:Z = false

.field private static final INET_CONDITION_THRESHOLD:I = -0x1

.field public static final REFRSH_ALL:I = -0x1

.field static final TAG:Ljava/lang/String; = "StatusBar.NetworkController"


# instance fields
.field private isCdmaPhone:Z

.field mAirplaneIconId:I

.field private mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothTetherIconId:I

.field private mBluetoothTethered:Z

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mCombinedSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectedNetworkType:I

.field private mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionCombinedSignalGemini:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionDataTypeGemini:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionPhoneSignalGemini:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDataActive:Z

.field mDataActiveGemini:Z

.field mDataActivity:I

.field mDataActivityGemini:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataConnectedGemini:Z

.field mDataDirectionIconId:I

.field mDataDirectionIconIdGemini:I

.field mDataDirectionIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataDirectionOverlayIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataIconList:[I

.field mDataIconListGemini:[I

.field mDataNetType:I

.field mDataNetTypeGemini:I

.field mDataSignalIconId:I

.field mDataSignalIconIdGemini:I

.field mDataState:I

.field mDataStateGemini:I

.field mDataTypeIconId:I

.field mDataTypeIconIdGemini:I

.field mDataTypeIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIsWimaxEnabled:Z

.field private mLastAirplaneMode:Z

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field mLastDataDirectionIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastDataTypeIconId:I

.field mLastDataTypeIconIdGemini:I

.field mLastPhoneSignalIconId:I

.field mLastPhoneSignalIconIdGemini:I

.field mLastSignalLevel:I

.field mLastSignalLevelGemini:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field mMobileActivityIconId:I

.field mMobileActivityIconIdGemini:I

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameDefaultGemini:Ljava/lang/String;

.field mNetworkNameGemini:Ljava/lang/String;

.field mNetworkNameNoSIM:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mNetworkNameSeparatorGemini:Ljava/lang/String;

.field final mPhone:Landroid/telephony/BaiduTelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneSignalIconIdGemini:I

.field mPhoneSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneState:I

.field mPhoneStateGemini:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

.field mPlmn:Ljava/lang/String;

.field mPlmnGemini:Ljava/lang/String;

.field mServiceState:Landroid/telephony/ServiceState;

.field mServiceStateGemini:Landroid/telephony/ServiceState;

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mShowPlmn:Z

.field mShowPlmnGemini:Z

.field mShowSpn:Z

.field mShowSpnGemini:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalStrengthGemini:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

.field mSpn:Ljava/lang/String;

.field mSpnGemini:Ljava/lang/String;

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field mWimaxIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e1

    const/4 v8, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 210
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 79
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 80
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneState:I

    .line 81
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:I

    .line 82
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataState:I

    .line 83
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:I

    .line 86
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v5, v5, v7

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconList:[I

    .line 98
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowPhoneRSSIForData:Z

    .line 99
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    .line 100
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAlwaysShowCdmaRssi:Z

    .line 112
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 113
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneStateGemini:I

    .line 114
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetTypeGemini:I

    .line 115
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataStateGemini:I

    .line 116
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivityGemini:I

    .line 119
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v5, v5, v7

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconListGemini:[I

    .line 130
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconIdGemini:I

    .line 131
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconIdGemini:I

    .line 144
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    .line 145
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:I

    .line 146
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    .line 149
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    .line 150
    const v5, 0x1080563

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTetherIconId:I

    .line 154
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSupported:Z

    .line 155
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    .line 156
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    .line 157
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIdle:Z

    .line 158
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    .line 159
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSignal:I

    .line 160
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxState:I

    .line 161
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxExtraState:I

    .line 164
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnected:Z

    .line 165
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkType:I

    .line 167
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    .line 174
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    .line 175
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastAirplaneMode:Z

    .line 179
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    .line 180
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconViews:Ljava/util/ArrayList;

    .line 181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 182
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconViews:Ljava/util/ArrayList;

    .line 183
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconViews:Ljava/util/ArrayList;

    .line 184
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    .line 185
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconViews:Ljava/util/ArrayList;

    .line 186
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 187
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 188
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 189
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalClusters:Ljava/util/ArrayList;

    .line 190
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:I

    .line 191
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionIconId:I

    .line 192
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    .line 193
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    .line 194
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWimaxIconId:I

    .line 195
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedSignalIconId:I

    .line 196
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:I

    .line 197
    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedLabel:Ljava/lang/String;

    .line 200
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaPhone:Z

    .line 202
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataAndWifiStacked:Z

    .line 461
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 523
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    .line 1124
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowSpn:Z

    .line 1125
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowPlmn:Z

    .line 1128
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowSpnGemini:Z

    .line 1129
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowPlmnGemini:Z

    .line 211
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 214
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 216
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    .line 218
    const v5, 0x7f0b0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowPhoneRSSIForData:Z

    .line 219
    const v5, 0x7f0b0005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    .line 220
    const v5, 0x1110039

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAlwaysShowCdmaRssi:Z

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWifiIcons()V

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWimaxIcons()V

    .line 228
    invoke-static {}, Landroid/telephony/BaiduTelephonyManager;->getDefault()Landroid/telephony/BaiduTelephonyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Landroid/telephony/BaiduTelephonyManager;

    .line 229
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Landroid/telephony/BaiduTelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, p1, v6, v9, v7}, Landroid/telephony/BaiduTelephonyManager;->listen(Landroid/content/Context;Landroid/telephony/PhoneStateListener;II)V

    .line 236
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHspaDataDistinguishable:Z

    .line 238
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v6, 0x7f0c001d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameSeparator:Ljava/lang/String;

    .line 239
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v6, 0x10402e6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    .line 241
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v6, 0x10402f5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameNoSIM:Ljava/lang/String;

    .line 243
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameNoSIM:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    .line 246
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Landroid/telephony/BaiduTelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, p1, v6, v9, v8}, Landroid/telephony/BaiduTelephonyManager;->listen(Landroid/content/Context;Landroid/telephony/PhoneStateListener;II)V

    .line 253
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameNoSIM:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameGemini:Ljava/lang/String;

    .line 254
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefaultGemini:Ljava/lang/String;

    .line 258
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 259
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)V

    .line 260
    .local v2, handler:Landroid/os/Handler;
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 261
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 262
    .local v4, wifiMessenger:Landroid/os/Messenger;
    if-eqz v4, :cond_0

    .line 263
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 267
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111003e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSupported:Z

    .line 280
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSupported:Z

    if-eqz v5, :cond_1

    .line 281
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    :cond_1
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateAirplaneMode()V

    .line 291
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 293
    const-string v5, "ct"

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaPhone:Z

    .line 294
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTransparent(I)V

    return-void
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .parameter "resId"

    .prologue
    .line 2090
    if-eqz p1, :cond_0

    .line 2091
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2093
    .local v1, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2098
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 2094
    .restart local v1       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 2095
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 2098
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private hasService(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 666
    if-nez p1, :cond_1

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:Landroid/telephony/ServiceState;

    .line 671
    .local v0, tempServiceState:Landroid/telephony/ServiceState;
    :goto_0
    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 677
    :pswitch_0
    const/4 v1, 0x1

    .line 680
    :cond_0
    :pswitch_1
    return v1

    .line 669
    .end local v0           #tempServiceState:Landroid/telephony/ServiceState;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceStateGemini:Landroid/telephony/ServiceState;

    .restart local v0       #tempServiceState:Landroid/telephony/ServiceState;
    goto :goto_0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .parameter "info"

    .prologue
    .line 1265
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1266
    .local v3, ssid:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1276
    .end local v3           #ssid:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1270
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1271
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1272
    .local v1, net:Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1273
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1276
    .end local v1           #net:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCdma(I)Z
    .locals 2
    .parameter "slotId"

    .prologue
    .line 656
    if-nez p1, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 661
    .local v0, tempSignalStrength:Landroid/telephony/SignalStrength;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 659
    .end local v0           #tempSignalStrength:Landroid/telephony/SignalStrength;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrengthGemini:Landroid/telephony/SignalStrength;

    .restart local v0       #tempSignalStrength:Landroid/telephony/SignalStrength;
    goto :goto_0

    .line 661
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isNetTypeCdma1x(I)Z
    .locals 1
    .parameter "NetType"

    .prologue
    .line 1389
    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x7

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendDataState2UBC(Landroid/net/NetworkInfo$State;)V
    .locals 2
    .parameter "datastate"

    .prologue
    .line 1372
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p1, v1, :cond_0

    .line 1373
    const/4 v0, 0x0

    .line 1385
    .local v0, mobileDataState:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/UBCManager;->getDefault(Landroid/content/Context;)Lcom/android/systemui/UBCManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/UBCManager;->submitDataState(I)V

    .line 1386
    return-void

    .line 1374
    .end local v0           #mobileDataState:I
    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v1, :cond_1

    .line 1375
    const/4 v0, 0x1

    .restart local v0       #mobileDataState:I
    goto :goto_0

    .line 1376
    .end local v0           #mobileDataState:I
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne p1, v1, :cond_2

    .line 1377
    const/4 v0, 0x2

    .restart local v0       #mobileDataState:I
    goto :goto_0

    .line 1378
    .end local v0           #mobileDataState:I
    :cond_2
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p1, v1, :cond_3

    .line 1379
    const/4 v0, 0x3

    .restart local v0       #mobileDataState:I
    goto :goto_0

    .line 1380
    .end local v0           #mobileDataState:I
    :cond_3
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v1, :cond_4

    .line 1381
    const/4 v0, 0x4

    .restart local v0       #mobileDataState:I
    goto :goto_0

    .line 1383
    .end local v0           #mobileDataState:I
    :cond_4
    const/4 v0, 0x5

    .restart local v0       #mobileDataState:I
    goto :goto_0
.end method

.method private updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 685
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    .line 687
    return-void

    :cond_0
    move v0, v1

    .line 685
    goto :goto_0
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 1331
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1333
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1336
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnected:Z

    .line 1337
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnected:Z

    if-eqz v4, :cond_1

    .line 1338
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkType:I

    .line 1339
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1345
    :goto_1
    const-string v4, "inetCondition"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1352
    .local v1, connectionStatus:I
    if-le v1, v8, :cond_2

    :goto_2
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    .line 1354
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3

    .line 1355
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    .line 1361
    :goto_3
    const-string v4, "simId"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1362
    .local v3, slotId:I
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    .line 1363
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWimaxIcons()V

    .line 1364
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V

    .line 1365
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength(I)V

    .line 1366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWifiIcons()V

    .line 1367
    return-void

    .end local v1           #connectionStatus:I
    .end local v3           #slotId:I
    :cond_0
    move v4, v6

    .line 1336
    goto :goto_0

    .line 1341
    :cond_1
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkType:I

    .line 1342
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .restart local v1       #connectionStatus:I
    :cond_2
    move v5, v6

    .line 1352
    goto :goto_2

    .line 1357
    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    goto :goto_3
.end method

.method private final updateDataIcon(I)V
    .locals 13
    .parameter "slotId"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 1030
    const/4 v7, 0x1

    .line 1036
    .local v7, visible:Z
    if-nez p1, :cond_2

    .line 1037
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1038
    .local v6, tempSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataState:I

    .line 1039
    .local v5, tempDataState:I
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:I

    .line 1040
    .local v3, tempDataActivity:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconList:[I

    .line 1048
    .local v4, tempDataIconList:[I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v8

    if-nez v8, :cond_5

    .line 1050
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v8, :cond_4

    .line 1051
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v8

    if-eqz v8, :cond_3

    if-ne v5, v9, :cond_3

    .line 1052
    packed-switch v3, :pswitch_data_0

    .line 1063
    aget v0, v4, v10

    .line 1100
    .local v0, iconId:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1102
    .local v1, ident:J
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Landroid/telephony/BaiduTelephonyManager;

    invoke-virtual {v9, p1}, Landroid/telephony/BaiduTelephonyManager;->getNetworkType(I)I

    move-result v9

    invoke-interface {v8, v9, v7}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1108
    :goto_2
    if-nez p1, :cond_7

    .line 1109
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconId:I

    .line 1110
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:Z

    .line 1111
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:Z

    if-eqz v8, :cond_1

    .line 1112
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnectedGemini:Z

    .line 1121
    :cond_1
    :goto_3
    return-void

    .line 1042
    .end local v0           #iconId:I
    .end local v1           #ident:J
    .end local v3           #tempDataActivity:I
    .end local v4           #tempDataIconList:[I
    .end local v5           #tempDataState:I
    .end local v6           #tempSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1043
    .restart local v6       #tempSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataStateGemini:I

    .line 1044
    .restart local v5       #tempDataState:I
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivityGemini:I

    .line 1045
    .restart local v3       #tempDataActivity:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconListGemini:[I

    .restart local v4       #tempDataIconList:[I
    goto :goto_0

    .line 1054
    :pswitch_0
    aget v0, v4, v11

    .line 1055
    .restart local v0       #iconId:I
    goto :goto_1

    .line 1057
    .end local v0           #iconId:I
    :pswitch_1
    aget v0, v4, v9

    .line 1058
    .restart local v0       #iconId:I
    goto :goto_1

    .line 1060
    .end local v0           #iconId:I
    :pswitch_2
    aget v0, v4, v12

    .line 1061
    .restart local v0       #iconId:I
    goto :goto_1

    .line 1068
    .end local v0           #iconId:I
    :cond_3
    const/4 v0, 0x0

    .line 1069
    .restart local v0       #iconId:I
    const/4 v7, 0x0

    goto :goto_1

    .line 1072
    .end local v0           #iconId:I
    :cond_4
    const v0, 0x7f02019a

    .line 1073
    .restart local v0       #iconId:I
    const/4 v7, 0x0

    goto :goto_1

    .line 1077
    .end local v0           #iconId:I
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v8

    if-eqz v8, :cond_6

    if-ne v5, v9, :cond_6

    .line 1078
    packed-switch v3, :pswitch_data_1

    .line 1090
    aget v0, v4, v10

    .line 1091
    .restart local v0       #iconId:I
    goto :goto_1

    .line 1080
    .end local v0           #iconId:I
    :pswitch_3
    aget v0, v4, v11

    .line 1081
    .restart local v0       #iconId:I
    goto :goto_1

    .line 1083
    .end local v0           #iconId:I
    :pswitch_4
    aget v0, v4, v9

    .line 1084
    .restart local v0       #iconId:I
    goto :goto_1

    .line 1086
    .end local v0           #iconId:I
    :pswitch_5
    aget v0, v4, v12

    .line 1087
    .restart local v0       #iconId:I
    goto :goto_1

    .line 1094
    .end local v0           #iconId:I
    :cond_6
    const/4 v0, 0x0

    .line 1095
    .restart local v0       #iconId:I
    const/4 v7, 0x0

    goto :goto_1

    .line 1103
    .restart local v1       #ident:J
    :catch_0
    move-exception v8

    .line 1105
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v8

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1115
    :cond_7
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconIdGemini:I

    .line 1116
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnectedGemini:Z

    .line 1117
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnectedGemini:Z

    if-eqz v8, :cond_1

    .line 1118
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:Z

    goto :goto_3

    .line 1052
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1078
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 11
    .parameter "slotId"

    .prologue
    const v10, 0x7f0c0070

    const v9, 0x7f0c006f

    const v8, 0x7f0c006a

    const v7, 0x7f0c006d

    .line 835
    if-nez p1, :cond_3

    .line 836
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:I

    .line 837
    .local v2, tempDataNetType:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 846
    .local v4, tempSignalStrength:Landroid/telephony/SignalStrength;
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    if-eqz v5, :cond_5

    .line 848
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 849
    .local v1, tempDataIconList:[I
    if-nez p1, :cond_4

    .line 850
    const v3, 0x7f020182

    .line 854
    .local v3, tempDataTypeIconId:I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, tempContentDescriptionDataType:Ljava/lang/String;
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 982
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaEri(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 983
    const/4 v3, 0x0

    .line 992
    :cond_0
    :goto_3
    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 993
    :cond_1
    const/4 v3, 0x0

    .line 996
    :cond_2
    if-nez p1, :cond_16

    .line 997
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconList:[I

    .line 998
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    .line 999
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1005
    :goto_4
    return-void

    .line 839
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v1           #tempDataIconList:[I
    .end local v2           #tempDataNetType:I
    .end local v3           #tempDataTypeIconId:I
    .end local v4           #tempSignalStrength:Landroid/telephony/SignalStrength;
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetTypeGemini:I

    .line 840
    .restart local v2       #tempDataNetType:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrengthGemini:Landroid/telephony/SignalStrength;

    .restart local v4       #tempSignalStrength:Landroid/telephony/SignalStrength;
    goto :goto_0

    .line 852
    .restart local v1       #tempDataIconList:[I
    :cond_4
    const v3, 0x7f020183

    .restart local v3       #tempDataTypeIconId:I
    goto :goto_1

    .line 857
    .end local v1           #tempDataIconList:[I
    .end local v3           #tempDataTypeIconId:I
    :cond_5
    packed-switch v2, :pswitch_data_0

    .line 958
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    if-nez v5, :cond_12

    .line 959
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 960
    .restart local v1       #tempDataIconList:[I
    if-nez p1, :cond_11

    .line 961
    const v3, 0x7f020188

    .line 965
    .restart local v3       #tempDataTypeIconId:I
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    goto :goto_2

    .line 859
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v1           #tempDataIconList:[I
    .end local v3           #tempDataTypeIconId:I
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    if-nez v5, :cond_6

    .line 860
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 861
    .restart local v1       #tempDataIconList:[I
    const/4 v3, 0x0

    .line 862
    .restart local v3       #tempDataTypeIconId:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 864
    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    goto :goto_2

    .line 869
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v1           #tempDataIconList:[I
    .end local v3           #tempDataTypeIconId:I
    :cond_6
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowAtLeastThreeGees:Z

    if-nez v5, :cond_8

    .line 870
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 871
    .restart local v1       #tempDataIconList:[I
    if-nez p1, :cond_7

    .line 872
    const v3, 0x7f020185

    .line 875
    .restart local v3       #tempDataTypeIconId:I
    :goto_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v6, 0x7f0c0072

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 877
    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    goto :goto_2

    .line 874
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v3           #tempDataTypeIconId:I
    :cond_7
    const v3, 0x7f020186

    .restart local v3       #tempDataTypeIconId:I
    goto :goto_6

    .line 882
    .end local v1           #tempDataIconList:[I
    .end local v3           #tempDataTypeIconId:I
    :cond_8
    :pswitch_3
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 883
    .restart local v1       #tempDataIconList:[I
    if-nez p1, :cond_9

    .line 884
    const v3, 0x7f02017f

    .line 887
    .restart local v3       #tempDataTypeIconId:I
    :goto_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 889
    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 886
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v3           #tempDataTypeIconId:I
    :cond_9
    const v3, 0x7f020180

    .restart local v3       #tempDataTypeIconId:I
    goto :goto_7

    .line 894
    .end local v1           #tempDataIconList:[I
    .end local v3           #tempDataTypeIconId:I
    :pswitch_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHspaDataDistinguishable:Z

    if-eqz v5, :cond_b

    .line 895
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 896
    .restart local v1       #tempDataIconList:[I
    if-nez p1, :cond_a

    .line 897
    const v3, 0x7f02018b

    .line 900
    .restart local v3       #tempDataTypeIconId:I
    :goto_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v6, 0x7f0c006e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 899
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v3           #tempDataTypeIconId:I
    :cond_a
    const v3, 0x7f02018c

    .restart local v3       #tempDataTypeIconId:I
    goto :goto_8

    .line 903
    .end local v1           #tempDataIconList:[I
    .end local v3           #tempDataTypeIconId:I
    :cond_b
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 904
    .restart local v1       #tempDataIconList:[I
    if-nez p1, :cond_c

    .line 905
    const v3, 0x7f02017f

    .line 909
    .restart local v3       #tempDataTypeIconId:I
    :goto_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 912
    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 907
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v3           #tempDataTypeIconId:I
    :cond_c
    const v3, 0x7f020180

    .restart local v3       #tempDataTypeIconId:I
    goto :goto_9

    .line 915
    .end local v1           #tempDataIconList:[I
    .end local v3           #tempDataTypeIconId:I
    :pswitch_5
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 916
    .restart local v1       #tempDataIconList:[I
    if-nez p1, :cond_d

    .line 917
    const v3, 0x7f02017c

    .line 921
    .restart local v3       #tempDataTypeIconId:I
    :goto_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 923
    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 919
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v3           #tempDataTypeIconId:I
    :cond_d
    const v3, 0x7f02017d

    .restart local v3       #tempDataTypeIconId:I
    goto :goto_a

    .line 925
    .end local v1           #tempDataIconList:[I
    .end local v3           #tempDataTypeIconId:I
    :pswitch_6
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 926
    .restart local v1       #tempDataIconList:[I
    if-nez p1, :cond_e

    .line 927
    const v3, 0x7f02017c

    .line 931
    .restart local v3       #tempDataTypeIconId:I
    :goto_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 933
    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 929
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v3           #tempDataTypeIconId:I
    :cond_e
    const v3, 0x7f02017d

    .restart local v3       #tempDataTypeIconId:I
    goto :goto_b

    .line 938
    .end local v1           #tempDataIconList:[I
    .end local v3           #tempDataTypeIconId:I
    :pswitch_7
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 939
    .restart local v1       #tempDataIconList:[I
    if-nez p1, :cond_f

    .line 940
    const v3, 0x7f02017f

    .line 944
    .restart local v3       #tempDataTypeIconId:I
    :goto_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 946
    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 942
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v3           #tempDataTypeIconId:I
    :cond_f
    const v3, 0x7f020180

    .restart local v3       #tempDataTypeIconId:I
    goto :goto_c

    .line 948
    .end local v1           #tempDataIconList:[I
    .end local v3           #tempDataTypeIconId:I
    :pswitch_8
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 949
    .restart local v1       #tempDataIconList:[I
    if-nez p1, :cond_10

    .line 950
    const v3, 0x7f020182

    .line 954
    .restart local v3       #tempDataTypeIconId:I
    :goto_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 956
    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 952
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v3           #tempDataTypeIconId:I
    :cond_10
    const v3, 0x7f020183

    .restart local v3       #tempDataTypeIconId:I
    goto :goto_d

    .line 963
    .end local v3           #tempDataTypeIconId:I
    :cond_11
    const v3, 0x7f020189

    .restart local v3       #tempDataTypeIconId:I
    goto/16 :goto_5

    .line 968
    .end local v1           #tempDataIconList:[I
    .end local v3           #tempDataTypeIconId:I
    :cond_12
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v1, v5, v6

    .line 969
    .restart local v1       #tempDataIconList:[I
    if-nez p1, :cond_13

    .line 970
    const v3, 0x7f02017f

    .line 974
    .restart local v3       #tempDataTypeIconId:I
    :goto_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    goto/16 :goto_2

    .line 972
    .end local v0           #tempContentDescriptionDataType:Ljava/lang/String;
    .end local v3           #tempDataTypeIconId:I
    :cond_13
    const v3, 0x7f020180

    .restart local v3       #tempDataTypeIconId:I
    goto :goto_e

    .line 985
    .restart local v0       #tempContentDescriptionDataType:Ljava/lang/String;
    :cond_14
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Landroid/telephony/BaiduTelephonyManager;

    invoke-virtual {v5, p1}, Landroid/telephony/BaiduTelephonyManager;->isNetworkRoaming(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 986
    if-nez p1, :cond_15

    .line 987
    const v3, 0x7f02018e

    goto/16 :goto_3

    .line 989
    :cond_15
    const v3, 0x7f02018f

    goto/16 :goto_3

    .line 1001
    :cond_16
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataIconListGemini:[I

    .line 1002
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconIdGemini:I

    .line 1003
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataTypeGemini:Ljava/lang/String;

    goto/16 :goto_4

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method private final updateSimState(ILandroid/content/Intent;)V
    .locals 9
    .parameter "slotId"
    .parameter "intent"

    .prologue
    .line 620
    const/4 v8, 0x0

    .line 621
    .local v8, tempSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 622
    .local v7, stateExtra:Ljava/lang/String;
    const-string v0, "ABSENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 643
    :goto_0
    if-eqz v8, :cond_0

    .line 644
    if-nez p1, :cond_6

    .line 645
    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 646
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowSpn:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSpn:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowPlmn:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPlmn:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V

    .line 652
    :cond_0
    :goto_1
    return-void

    .line 625
    :cond_1
    const-string v0, "READY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 628
    :cond_2
    const-string v0, "LOCKED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 629
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 630
    .local v6, lockedReason:Ljava/lang/String;
    const-string v0, "PIN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 631
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 633
    :cond_3
    const-string v0, "PUK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 637
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 640
    .end local v6           #lockedReason:Ljava/lang/String;
    :cond_5
    sget-object v8, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 648
    :cond_6
    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 649
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowSpnGemini:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSpnGemini:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowPlmnGemini:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPlmnGemini:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_1
.end method

.method private final updateTelephonySignalStrength()V
    .locals 7

    .prologue
    const v6, 0x7f02022f

    const/4 v4, 0x0

    .line 699
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/telephony/BaiduTelephonyUtils;->isSlotActive(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Landroid/telephony/BaiduTelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/BaiduTelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 701
    .local v3, isInsertAndDisabled:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 702
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    .line 703
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    .line 704
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    .line 762
    :goto_1
    return-void

    .end local v3           #isInsertAndDisabled:Z
    :cond_0
    move v3, v4

    .line 699
    goto :goto_0

    .line 708
    .restart local v3       #isInsertAndDisabled:Z
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 710
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    .line 711
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    goto :goto_1

    .line 713
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v5, :cond_3

    .line 715
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    .line 716
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    .line 717
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v6, v4

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 722
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAlwaysShowCdmaRssi:Z

    if-eqz v5, :cond_4

    .line 723
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastSignalLevel:I

    .line 731
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 732
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneState:I

    if-nez v5, :cond_6

    .line 733
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 734
    .local v1, iconLevelevdo:I
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaEri(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 735
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CDMA_SIGNAL_STRENGTH_ROAMING_SIM1:[[I

    aget-object v2, v4, v1

    .line 739
    .local v2, iconList:[I
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 756
    .end local v1           #iconLevelevdo:I
    :goto_4
    aget v4, v2, v0

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    .line 757
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 759
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v4, v4, v5

    aget v4, v4, v0

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    goto :goto_1

    .line 728
    .end local v0           #iconLevel:I
    .end local v2           #iconList:[I
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0       #iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastSignalLevel:I

    goto :goto_2

    .line 737
    .restart local v1       #iconLevelevdo:I
    :cond_5
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CDMA_SIGNAL_STRENGTH_SIM1:[[I

    aget-object v2, v4, v1

    .restart local v2       #iconList:[I
    goto :goto_3

    .line 741
    .end local v1           #iconLevelevdo:I
    .end local v2           #iconList:[I
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaEri(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 742
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CDMA_SIGNAL_STRENGTH_1X_ROAMING_SIM1:[I

    .line 746
    .restart local v2       #iconList:[I
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    goto :goto_4

    .line 744
    .end local v2           #iconList:[I
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CDMA_SIGNAL_STRENGTH_1X_SIM1:[I

    .restart local v2       #iconList:[I
    goto :goto_5

    .line 750
    .end local v2           #iconList:[I
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Landroid/telephony/BaiduTelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/BaiduTelephonyManager;->isNetworkRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 751
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM1:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v2, v4, v5

    .restart local v2       #iconList:[I
    goto :goto_4

    .line 753
    .end local v2           #iconList:[I
    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM1:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v2, v4, v5

    .restart local v2       #iconList:[I
    goto :goto_4
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 690
    if-nez p1, :cond_0

    .line 691
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength()V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrengthGemini()V

    goto :goto_0
.end method

.method private final updateTelephonySignalStrengthGemini()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const v7, 0x7f020230

    const/4 v4, 0x1

    .line 766
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Landroid/telephony/BaiduTelephonyUtils;->isSlotActive(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Landroid/telephony/BaiduTelephonyManager;

    invoke-virtual {v6, v4}, Landroid/telephony/BaiduTelephonyManager;->hasIccCard(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    .line 768
    .local v3, isInsertAndDisabled:Z
    :goto_0
    if-eqz v3, :cond_1

    .line 769
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    .line 770
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconIdGemini:I

    .line 771
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconIdGemini:I

    .line 829
    :goto_1
    return-void

    .end local v3           #isInsertAndDisabled:Z
    :cond_0
    move v3, v5

    .line 766
    goto :goto_0

    .line 775
    .restart local v3       #isInsertAndDisabled:Z
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 777
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    .line 778
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconIdGemini:I

    goto :goto_1

    .line 780
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrengthGemini:Landroid/telephony/SignalStrength;

    if-nez v6, :cond_3

    .line 782
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    .line 783
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconIdGemini:I

    .line 784
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v5, v6, v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignalGemini:Ljava/lang/String;

    goto :goto_1

    .line 789
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAlwaysShowCdmaRssi:Z

    if-eqz v5, :cond_4

    .line 790
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrengthGemini:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastSignalLevelGemini:I

    .line 798
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 799
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneStateGemini:I

    if-nez v5, :cond_6

    .line 800
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrengthGemini:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 801
    .local v1, iconLevelevdo:I
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaEri(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 802
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CDMA_SIGNAL_STRENGTH_ROAMING_SIM2:[[I

    aget-object v2, v4, v1

    .line 806
    .local v2, iconList:[I
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrengthGemini:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 823
    .end local v1           #iconLevelevdo:I
    :goto_4
    aget v4, v2, v0

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    .line 824
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignalGemini:Ljava/lang/String;

    .line 826
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v4, v4, v5

    aget v4, v4, v0

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconIdGemini:I

    goto :goto_1

    .line 795
    .end local v0           #iconLevel:I
    .end local v2           #iconList:[I
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrengthGemini:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0       #iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastSignalLevelGemini:I

    goto :goto_2

    .line 804
    .restart local v1       #iconLevelevdo:I
    :cond_5
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CDMA_SIGNAL_STRENGTH_SIM2:[[I

    aget-object v2, v4, v1

    .restart local v2       #iconList:[I
    goto :goto_3

    .line 808
    .end local v1           #iconLevelevdo:I
    .end local v2           #iconList:[I
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaEri(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 809
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CDMA_SIGNAL_STRENGTH_1X_ROAMING_SIM2:[I

    .line 813
    .restart local v2       #iconList:[I
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrengthGemini:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    goto :goto_4

    .line 811
    .end local v2           #iconList:[I
    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CDMA_SIGNAL_STRENGTH_1X_SIM2:[I

    .restart local v2       #iconList:[I
    goto :goto_5

    .line 817
    .end local v2           #iconList:[I
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Landroid/telephony/BaiduTelephonyManager;

    invoke-virtual {v5, v4}, Landroid/telephony/BaiduTelephonyManager;->isNetworkRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 818
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_SIM2:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v2, v4, v5

    .restart local v2       #iconList:[I
    goto :goto_4

    .line 820
    .end local v2           #iconList:[I
    :cond_9
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_SIM2:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v2, v4, v5

    .restart local v2       #iconList:[I
    goto :goto_4
.end method

.method private updateTransparent(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 586
    const/4 v2, 0x0

    .line 587
    .local v2, needSend:Z
    const/4 v3, 0x0

    .line 588
    .local v3, transparent:Z
    const/4 v1, 0x0

    .line 589
    .local v1, lockState:Z
    packed-switch p1, :pswitch_data_0

    .line 606
    :goto_0
    if-eqz v2, :cond_0

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.statusbar.ACTION_TRANSPARENT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x800

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 609
    const-string v4, "transparent"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 611
    const-string v4, "reason"

    const-string v5, "call"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v4, "lockstate"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 617
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 591
    :pswitch_0
    const/4 v3, 0x1

    .line 592
    const/4 v2, 0x1

    .line 593
    const/4 v1, 0x0

    .line 594
    goto :goto_0

    .line 596
    :pswitch_1
    const/4 v3, 0x0

    .line 597
    const/4 v2, 0x1

    .line 598
    const/4 v1, 0x1

    .line 599
    goto :goto_0

    .line 601
    :pswitch_2
    const/4 v3, 0x0

    .line 602
    const/4 v2, 0x1

    .line 603
    const/4 v1, 0x1

    goto :goto_0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1250
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v1, :cond_0

    .line 1251
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    .line 1262
    :goto_0
    return-void

    .line 1255
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_1

    .line 1256
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    .line 1260
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 1258
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiEnabled:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    aget v0, v1, v0

    :cond_2
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    goto :goto_1
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1215
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1217
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiEnabled:Z

    .line 1246
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWifiIcons()V

    .line 1247
    return-void

    :cond_1
    move v4, v5

    .line 1217
    goto :goto_0

    .line 1220
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1221
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1223
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    .line 1224
    .local v3, wasConnected:Z
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    .line 1226
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    .line 1228
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1229
    .local v1, info:Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 1230
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1232
    :cond_3
    if-eqz v1, :cond_5

    .line 1233
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_4
    move v4, v5

    .line 1224
    goto :goto_2

    .line 1235
    .restart local v1       #info:Landroid/net/wifi/WifiInfo;
    :cond_5
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 1237
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-nez v4, :cond_0

    .line 1238
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 1240
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #wasConnected:Z
    :cond_7
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1241
    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiRssi:I

    .line 1242
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiRssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    goto :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    .prologue
    .line 1307
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 1308
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 1309
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 1310
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    .line 1313
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWimax:Ljava/lang/String;

    .line 1322
    :goto_1
    return-void

    .line 1312
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    goto :goto_0

    .line 1316
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v1, 0x7f0c005b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 1320
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1282
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1283
    .local v0, action:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    .line 1284
    .local v1, wasConnected:Z
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1285
    const-string v3, "4g_state"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1287
    .local v2, wimaxStatus:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    .line 1301
    .end local v2           #wimaxStatus:I
    :cond_0
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    .line 1302
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataNetType(I)V

    .line 1303
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWimaxIcons()V

    .line 1304
    return-void

    .restart local v2       #wimaxStatus:I
    :cond_1
    move v3, v5

    .line 1287
    goto :goto_0

    .line 1289
    .end local v2           #wimaxStatus:I
    :cond_2
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1290
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSignal:I

    goto :goto_1

    .line 1291
    :cond_3
    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1292
    const-string v3, "WimaxState"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxState:I

    .line 1294
    const-string v3, "WimaxStateDetail"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxExtraState:I

    .line 1297
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v3, v6, :cond_4

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    .line 1299
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v3, v5

    .line 1297
    goto :goto_2

    :cond_5
    move v3, v5

    .line 1299
    goto :goto_3
.end method


# virtual methods
.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method public addCombinedSignalIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method public addDataDirectionIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public addDataDirectionOverlayIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public addDataTypeIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method

.method public addPhoneSignalIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 1
    .parameter "cluster"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 342
    return-void
.end method

.method public addWifiIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public addWimaxIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public clearMobileLabelView()V
    .locals 1

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2115
    return-void
.end method

.method public clearSignalCluster()V
    .locals 1

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2104
    return-void
.end method

.method public disconnectAsynChannel()V
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 2109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnected()V

    .line 2111
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1973
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1975
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1976
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1977
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1978
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1979
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1980
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1981
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1982
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1983
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1984
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1985
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1986
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1987
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1988
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1989
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1990
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1991
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1992
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1993
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1994
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1996
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1997
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1998
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1999
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2000
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2001
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2002
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2003
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2004
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2005
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2006
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2007
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2008
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2009
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2010
    const-string v0, "  mDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2011
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2012
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2013
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2014
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2015
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2016
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2017
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2018
    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2019
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2020
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2021
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2023
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2025
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2026
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2027
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2028
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2029
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2030
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2031
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2032
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2033
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2036
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2037
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2039
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 2040
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2041
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2042
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2043
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2044
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2047
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2053
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2055
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2057
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2059
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2060
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2061
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2062
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2063
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2064
    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2065
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2066
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2067
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2069
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2070
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2071
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2073
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2074
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2075
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2077
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2078
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2079
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2081
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2082
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2083
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2085
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2086
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    return-void
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    return v0
.end method

.method isCdmaEri(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v3, 0x1

    .line 1008
    const/4 v2, 0x0

    .line 1009
    .local v2, tempServiceState:Landroid/telephony/ServiceState;
    if-nez p1, :cond_1

    .line 1010
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:Landroid/telephony/ServiceState;

    .line 1015
    :goto_0
    if-eqz v2, :cond_2

    .line 1016
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1017
    .local v0, iconIndex:I
    if-eq v0, v3, :cond_2

    .line 1018
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1019
    .local v1, iconMode:I
    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_2

    .line 1025
    .end local v0           #iconIndex:I
    .end local v1           #iconMode:I
    :cond_0
    :goto_1
    return v3

    .line 1012
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceStateGemini:Landroid/telephony/ServiceState;

    goto :goto_0

    .line 1025
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, action:Ljava/lang/String;
    const-string v0, "simId"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 392
    .local v1, slotId:I
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWifiState(Landroid/content/Intent;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    .line 456
    :cond_1
    :goto_0
    return-void

    .line 397
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateSimState(ILandroid/content/Intent;)V

    .line 399
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateDataIcon(I)V

    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto :goto_0

    .line 401
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 402
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v0, "spn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "showPlmn"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto :goto_0

    .line 407
    :cond_4
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 410
    :cond_5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 411
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    move-object v7, v0

    check-cast v7, Landroid/net/NetworkInfo;

    .line 412
    .local v7, info:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_6

    .line 413
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->sendDataState2UBC(Landroid/net/NetworkInfo$State;)V

    .line 417
    .end local v7           #info:Landroid/net/NetworkInfo;
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateConnectivity(Landroid/content/Intent;)V

    .line 418
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto :goto_0

    .line 419
    :cond_7
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 420
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto :goto_0

    .line 421
    :cond_8
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 424
    .local v8, isDefault:Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameNoSIM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 425
    .local v10, isNoSim:Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameGemini:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 426
    .local v9, isDefaultGemini:Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameGemini:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameNoSIM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 427
    .local v11, isNoSimGemini:Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v2, 0x10402e6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    const v2, 0x10402f5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameNoSIM:Ljava/lang/String;

    .line 431
    if-eqz v8, :cond_9

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    .line 434
    :cond_9
    if-eqz v10, :cond_a

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameNoSIM:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    .line 437
    :cond_a
    if-eqz v9, :cond_b

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameGemini:Ljava/lang/String;

    .line 440
    :cond_b
    if-eqz v11, :cond_c

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameNoSIM:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameGemini:Ljava/lang/String;

    .line 444
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto/16 :goto_0

    .line 445
    .end local v8           #isDefault:Z
    .end local v9           #isDefaultGemini:Z
    .end local v10           #isNoSim:Z
    .end local v11           #isNoSimGemini:Z
    :cond_d
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateAirplaneMode()V

    .line 447
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrength()V

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateTelephonySignalStrengthGemini()V

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto/16 :goto_0

    .line 450
    :cond_e
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_f
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->updateWimaxState(Landroid/content/Intent;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 11
    .parameter "cluster"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 345
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 352
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    if-eqz v0, :cond_3

    .line 354
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    .line 382
    return-void

    :cond_1
    move v0, v1

    .line 345
    goto :goto_0

    .line 354
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    goto :goto_1

    .line 364
    :cond_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_4

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    :goto_3
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v3, p1

    move v4, v1

    invoke-interface/range {v3 .. v10}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    :goto_4
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconIdGemini:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignalGemini:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataTypeGemini:Ljava/lang/String;

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 364
    :cond_4
    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    goto :goto_3

    .line 372
    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconIdGemini:I

    goto :goto_4
.end method

.method refreshViews()V
    .locals 1

    .prologue
    .line 1394
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshViews(I)V

    .line 1395
    return-void
.end method

.method refreshViews(I)V
    .locals 22
    .parameter "slotId"

    .prologue
    .line 1399
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    .line 1401
    .local v8, context:Landroid/content/Context;
    const/4 v7, 0x0

    .line 1402
    .local v7, combinedSignalIconId:I
    const/4 v5, 0x0

    .line 1403
    .local v5, combinedActivityIconId:I
    const-string v6, ""

    .line 1404
    .local v6, combinedLabel:Ljava/lang/String;
    const-string v19, ""

    .line 1405
    .local v19, wifiLabel:Ljava/lang/String;
    const-string v13, ""

    .line 1408
    .local v13, mobileLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    move/from16 v20, v0

    if-nez v20, :cond_e

    .line 1409
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    .line 1410
    const-string v13, ""

    .line 1533
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1f

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1e

    .line 1535
    const v20, 0x7f0c0093

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1536
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:I

    .line 1558
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:I

    .line 1559
    move-object/from16 v6, v19

    .line 1560
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1570
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c001e

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1572
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTetherIconId:I

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0075

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1577
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkType:I

    move/from16 v20, v0

    const/16 v21, 0x9

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    const/4 v10, 0x1

    .line 1578
    .local v10, ethernetConnected:Z
    :goto_3
    if-eqz v10, :cond_2

    .line 1580
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1583
    :cond_2
    const/16 v20, -0x1

    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_3

    if-nez p1, :cond_5

    .line 1584
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v20

    if-nez v20, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v20

    if-nez v20, :cond_24

    .line 1589
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0076

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1591
    const v20, 0x7f020227

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    .line 1592
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    .line 1595
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_22

    .line 1632
    :cond_5
    :goto_4
    const/16 v20, -0x1

    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_6

    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_8

    .line 1633
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceStateGemini:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->hasService(I)Z

    move-result v20

    if-nez v20, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mServiceStateGemini:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v20

    if-nez v20, :cond_2a

    .line 1638
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0076

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignalGemini:Ljava/lang/String;

    .line 1640
    const v20, 0x7f020227

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconIdGemini:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    .line 1641
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconIdGemini:I

    .line 1644
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_28

    .line 1705
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    .line 1706
    .local v16, siminfo:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/BaiduTelephonyUtils$SIMInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v9

    .line 1707
    .local v9, count:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2e

    .line 1709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0017

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1710
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    .line 1711
    const v20, 0x7f020227

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    .line 1712
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    .line 1713
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    .line 1714
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    .line 1715
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconIdGemini:I

    .line 1796
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 1799
    :cond_9
    const v20, 0x7f02022f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    .line 1801
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 1804
    :cond_b
    const v20, 0x7f020230

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    .line 1808
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v5, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWimaxIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastAirplaneMode:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconIdGemini:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconIdGemini:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconIdGemini:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3c

    .line 1818
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 1819
    .local v4, cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_7

    .line 1434
    .end local v4           #cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v9           #count:I
    .end local v10           #ethernetConnected:Z
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #siminfo:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/BaiduTelephonyUtils$SIMInfo;>;"
    :cond_e
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameSeparator:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameGemini:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1437
    const/16 v20, -0x1

    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_f

    if-nez p1, :cond_10

    .line 1438
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_17

    .line 1439
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    .line 1440
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 1442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 1453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isNetTypeCdma1x(I)Z

    move-result v20

    if-eqz v20, :cond_15

    const v20, 0x7f020126

    :goto_8
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    .line 1472
    :goto_9
    move-object v6, v13

    .line 1473
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    .line 1474
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1485
    :cond_10
    :goto_a
    const/16 v20, -0x1

    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_11

    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 1486
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnectedGemini:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    .line 1487
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconIdGemini:I

    .line 1488
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v20

    if-eqz v20, :cond_1c

    .line 1490
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivityGemini:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    .line 1501
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetTypeGemini:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isNetTypeCdma1x(I)Z

    move-result v20

    if-eqz v20, :cond_1b

    const v20, 0x7f020127

    :goto_b
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    .line 1520
    :goto_c
    move-object v6, v13

    .line 1521
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    .line 1522
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconIdGemini:I

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataTypeGemini:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionCombinedSignalGemini:Ljava/lang/String;

    goto/16 :goto_0

    .line 1444
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isNetTypeCdma1x(I)Z

    move-result v20

    if-eqz v20, :cond_12

    const v20, 0x7f020129

    :goto_d
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    goto/16 :goto_9

    :cond_12
    const v20, 0x7f020135

    goto :goto_d

    .line 1447
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isNetTypeCdma1x(I)Z

    move-result v20

    if-eqz v20, :cond_13

    const v20, 0x7f02012f

    :goto_e
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    goto/16 :goto_9

    :cond_13
    const v20, 0x7f02013b

    goto :goto_e

    .line 1450
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isNetTypeCdma1x(I)Z

    move-result v20

    if-eqz v20, :cond_14

    const v20, 0x7f02012c

    :goto_f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    goto/16 :goto_9

    :cond_14
    const v20, 0x7f020138

    goto :goto_f

    .line 1453
    :cond_15
    const v20, 0x7f020132

    goto/16 :goto_8

    .line 1457
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivity:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_2

    .line 1468
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    goto/16 :goto_9

    .line 1459
    :pswitch_3
    const v20, 0x7f020229

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    goto/16 :goto_9

    .line 1462
    :pswitch_4
    const v20, 0x7f020232

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    goto/16 :goto_9

    .line 1465
    :pswitch_5
    const v20, 0x7f02022c

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    goto/16 :goto_9

    .line 1479
    :cond_17
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconId:I

    goto/16 :goto_a

    .line 1492
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetTypeGemini:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isNetTypeCdma1x(I)Z

    move-result v20

    if-eqz v20, :cond_18

    const v20, 0x7f02012a

    :goto_10
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    goto/16 :goto_c

    :cond_18
    const v20, 0x7f020136

    goto :goto_10

    .line 1495
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetTypeGemini:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isNetTypeCdma1x(I)Z

    move-result v20

    if-eqz v20, :cond_19

    const v20, 0x7f020130

    :goto_11
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    goto/16 :goto_c

    :cond_19
    const v20, 0x7f02013c

    goto :goto_11

    .line 1498
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataNetTypeGemini:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isNetTypeCdma1x(I)Z

    move-result v20

    if-eqz v20, :cond_1a

    const v20, 0x7f02012d

    :goto_12
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    goto/16 :goto_c

    :cond_1a
    const v20, 0x7f020139

    goto :goto_12

    .line 1501
    :cond_1b
    const v20, 0x7f020133

    goto/16 :goto_b

    .line 1505
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataActivityGemini:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_3

    .line 1516
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    goto/16 :goto_c

    .line 1507
    :pswitch_9
    const v20, 0x7f02022a

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    goto/16 :goto_c

    .line 1510
    :pswitch_a
    const v20, 0x7f020233

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    goto/16 :goto_c

    .line 1513
    :pswitch_b
    const v20, 0x7f02022d

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    goto/16 :goto_c

    .line 1527
    :cond_1d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileActivityIconIdGemini:I

    goto/16 :goto_0

    .line 1538
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1542
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivity:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_4

    goto/16 :goto_1

    .line 1553
    :pswitch_c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1544
    :pswitch_d
    const v20, 0x7f020288

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1547
    :pswitch_e
    const v20, 0x7f02028a

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1550
    :pswitch_f
    const v20, 0x7f020289

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1563
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    move/from16 v20, v0

    if-eqz v20, :cond_20

    .line 1564
    const-string v19, ""

    goto/16 :goto_2

    .line 1566
    :cond_20
    const v20, 0x7f0c0092

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    .line 1577
    :cond_21
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1599
    .restart local v10       #ethernetConnected:Z
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    move/from16 v20, v0

    if-eqz v20, :cond_23

    .line 1601
    const-string v19, ""

    .line 1606
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1607
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    goto/16 :goto_4

    .line 1603
    :cond_23
    const v20, 0x7f0c0092

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1604
    move-object/from16 v6, v19

    goto :goto_13

    .line 1610
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnected:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    if-nez v10, :cond_5

    .line 1613
    const v20, 0x7f0c0092

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1615
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    move/from16 v20, v0

    if-eqz v20, :cond_25

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconId:I

    .line 1617
    :goto_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    move/from16 v20, v0

    if-eqz v20, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v20, v0

    :goto_15
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1620
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    .line 1621
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v20

    if-eqz v20, :cond_27

    .line 1622
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaEri(I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1623
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    goto/16 :goto_4

    .line 1615
    :cond_25
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    goto :goto_14

    .line 1617
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_15

    .line 1625
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Landroid/telephony/BaiduTelephonyManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/BaiduTelephonyManager;->isNetworkRoaming(I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1626
    const v20, 0x7f02018d

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    goto/16 :goto_4

    .line 1648
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    move/from16 v20, v0

    if-eqz v20, :cond_29

    .line 1650
    const-string v19, ""

    .line 1655
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignalGemini:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionCombinedSignalGemini:Ljava/lang/String;

    .line 1656
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconIdGemini:I

    goto/16 :goto_5

    .line 1652
    :cond_29
    const v20, 0x7f0c0092

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1653
    move-object/from16 v6, v19

    goto :goto_16

    .line 1659
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataConnectedGemini:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiConnected:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mBluetoothTethered:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxConnected:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    if-nez v10, :cond_8

    .line 1662
    const v20, 0x7f0c0092

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1664
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2b

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataSignalIconIdGemini:I

    .line 1666
    :goto_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mHasMobileDataFeature:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataTypeGemini:Ljava/lang/String;

    move-object/from16 v20, v0

    :goto_18
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionCombinedSignalGemini:Ljava/lang/String;

    .line 1669
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconIdGemini:I

    .line 1670
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdma(I)Z

    move-result v20

    if-eqz v20, :cond_2d

    .line 1671
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->isCdmaEri(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1672
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconIdGemini:I

    goto/16 :goto_5

    .line 1664
    :cond_2b
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    goto :goto_17

    .line 1666
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_18

    .line 1674
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhone:Landroid/telephony/BaiduTelephonyManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/BaiduTelephonyManager;->isNetworkRoaming(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1675
    const v20, 0x7f02018d

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconIdGemini:I

    goto/16 :goto_5

    .line 1717
    .restart local v9       #count:I
    .restart local v16       #siminfo:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/BaiduTelephonyUtils$SIMInfo;>;"
    :cond_2e
    if-nez v9, :cond_2f

    .line 1719
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameNoSIM:Ljava/lang/String;

    .line 1720
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    .line 1721
    const v20, 0x7f02019a

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    goto/16 :goto_6

    .line 1723
    :cond_2f
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_33

    .line 1725
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSlot:I

    move/from16 v17, v0

    .line 1726
    .local v17, slot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/telephony/BaiduTelephonyUtils;->isSlotActive(Landroid/content/Context;I)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_31

    .line 1728
    if-nez v17, :cond_30

    .line 1730
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    .line 1731
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    goto/16 :goto_6

    .line 1735
    :cond_30
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameGemini:Ljava/lang/String;

    .line 1736
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    goto/16 :goto_6

    .line 1741
    :cond_31
    if-nez v17, :cond_32

    .line 1743
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    .line 1744
    const v20, 0x7f02022f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    .line 1745
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    goto/16 :goto_6

    .line 1749
    :cond_32
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefaultGemini:Ljava/lang/String;

    .line 1750
    const v20, 0x7f020230

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    .line 1751
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    goto/16 :goto_6

    .line 1758
    .end local v17           #slot:I
    :cond_33
    const/4 v14, 0x0

    .line 1759
    .local v14, networkName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1760
    .local v15, networkNameGemini:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_19
    if-ge v11, v9, :cond_37

    .line 1762
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->mSlot:I

    move/from16 v17, v0

    .line 1763
    .restart local v17       #slot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/telephony/BaiduTelephonyUtils;->isSlotActive(Landroid/content/Context;I)Z

    move-result v3

    .line 1764
    .local v3, active:Z
    if-nez v17, :cond_35

    .line 1766
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_34

    .line 1768
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    .line 1760
    :goto_1a
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    .line 1772
    :cond_34
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    .line 1773
    const v20, 0x7f02022f

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    goto :goto_1a

    .line 1778
    :cond_35
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_36

    .line 1780
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameGemini:Ljava/lang/String;

    goto :goto_1a

    .line 1784
    :cond_36
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefaultGemini:Ljava/lang/String;

    .line 1785
    const v20, 0x7f020230

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    goto :goto_1a

    .line 1789
    .end local v3           #active:Z
    .end local v17           #slot:I
    :cond_37
    if-eqz v14, :cond_38

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_39

    .line 1790
    :cond_38
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    .line 1791
    :cond_39
    if-eqz v14, :cond_3a

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3b

    .line 1792
    :cond_3a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefaultGemini:Ljava/lang/String;

    .line 1794
    :cond_3b
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameSeparator:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_6

    .line 1823
    .end local v11           #i:I
    .end local v14           #networkName:Ljava/lang/String;
    .end local v15           #networkNameGemini:Ljava/lang/String;
    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastAirplaneMode:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3d

    .line 1824
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mAirplaneMode:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastAirplaneMode:Z

    .line 1828
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3f

    .line 1829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconId:I

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1831
    .local v2, N:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_1b
    if-ge v11, v2, :cond_3f

    .line 1832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1833
    .local v18, v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    move/from16 v20, v0

    if-nez v20, :cond_3e

    .line 1834
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1831
    :goto_1c
    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    .line 1836
    :cond_3e
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1837
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 1842
    .end local v2           #N:I
    .end local v11           #i:I
    .end local v18           #v:Landroid/widget/ImageView;
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconIdGemini:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_40

    .line 1843
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPhoneSignalIconIdGemini:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastPhoneSignalIconIdGemini:I

    .line 1847
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_41

    .line 1848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionIconId:I

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1850
    .restart local v2       #N:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_1d
    if-ge v11, v2, :cond_41

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1852
    .restart local v18       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionIconId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1850
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d

    .line 1858
    .end local v2           #N:I
    .end local v11           #i:I
    .end local v18           #v:Landroid/widget/ImageView;
    :cond_41
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_43

    .line 1859
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWifiIconId:I

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1861
    .restart local v2       #N:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_1e
    if-ge v11, v2, :cond_43

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1863
    .restart local v18       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    move/from16 v20, v0

    if-nez v20, :cond_42

    .line 1864
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1861
    :goto_1f
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    .line 1866
    :cond_42
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiIconId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 1874
    .end local v2           #N:I
    .end local v11           #i:I
    .end local v18           #v:Landroid/widget/ImageView;
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWimaxIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_45

    .line 1875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastWimaxIconId:I

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1877
    .restart local v2       #N:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_20
    if-ge v11, v2, :cond_45

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1879
    .restart local v18       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    move/from16 v20, v0

    if-nez v20, :cond_44

    .line 1880
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1877
    :goto_21
    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    .line 1882
    :cond_44
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1883
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWimaxIconId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionWimax:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 1889
    .end local v2           #N:I
    .end local v11           #i:I
    .end local v18           #v:Landroid/widget/ImageView;
    :cond_45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedSignalIconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v7, :cond_46

    .line 1890
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedSignalIconId:I

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1892
    .restart local v2       #N:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_22
    if-ge v11, v2, :cond_46

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1894
    .restart local v18       #v:Landroid/widget/ImageView;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1892
    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    .line 1900
    .end local v2           #N:I
    .end local v11           #i:I
    .end local v18           #v:Landroid/widget/ImageView;
    :cond_46
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_48

    .line 1901
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconId:I

    .line 1902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1903
    .restart local v2       #N:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_23
    if-ge v11, v2, :cond_48

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1905
    .restart local v18       #v:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    move/from16 v20, v0

    if-nez v20, :cond_47

    .line 1906
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1903
    :goto_24
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    .line 1908
    :cond_47
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1909
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 1914
    .end local v2           #N:I
    .end local v11           #i:I
    .end local v18           #v:Landroid/widget/ImageView;
    :cond_48
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconIdGemini:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconIdGemini:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_49

    .line 1915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataTypeIconIdGemini:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataTypeIconIdGemini:I

    .line 1919
    :cond_49
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v5, :cond_4b

    .line 1923
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastDataDirectionOverlayIconId:I

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1925
    .restart local v2       #N:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_25
    if-ge v11, v2, :cond_4b

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 1927
    .restart local v18       #v:Landroid/widget/ImageView;
    if-nez v5, :cond_4a

    .line 1928
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1925
    :goto_26
    add-int/lit8 v11, v11, 0x1

    goto :goto_25

    .line 1930
    :cond_4a
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1931
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 1938
    .end local v2           #N:I
    .end local v11           #i:I
    .end local v18           #v:Landroid/widget/ImageView;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4c

    .line 1939
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mLastCombinedLabel:Ljava/lang/String;

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1941
    .restart local v2       #N:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_27
    if-ge v11, v2, :cond_4c

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1943
    .local v18, v:Landroid/widget/TextView;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1941
    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    .line 1948
    .end local v2           #N:I
    .end local v11           #i:I
    .end local v18           #v:Landroid/widget/TextView;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1949
    .restart local v2       #N:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_28
    if-ge v11, v2, :cond_4e

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1951
    .restart local v18       #v:Landroid/widget/TextView;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1952
    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4d

    .line 1953
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1949
    :goto_29
    add-int/lit8 v11, v11, 0x1

    goto :goto_28

    .line 1955
    :cond_4d
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_29

    .line 1960
    .end local v18           #v:Landroid/widget/TextView;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1961
    const/4 v11, 0x0

    :goto_2a
    if-ge v11, v2, :cond_50

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1963
    .restart local v18       #v:Landroid/widget/TextView;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1964
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4f

    .line 1965
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1961
    :goto_2b
    add-int/lit8 v11, v11, 0x1

    goto :goto_2a

    .line 1967
    :cond_4f
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b

    .line 1970
    .end local v18           #v:Landroid/widget/TextView;
    :cond_50
    return-void

    .line 1442
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1490
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1457
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1505
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1542
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public setStackedMode(Z)V
    .locals 1
    .parameter "stacked"

    .prologue
    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mDataAndWifiStacked:Z

    .line 386
    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2119
    return-void
.end method

.method updateNetworkName(IZLjava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "slotId"
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1139
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1140
    .local v0, something:Z
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 1141
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    const/4 v0, 0x1

    .line 1144
    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1145
    if-eqz v0, :cond_1

    .line 1146
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    const/4 v0, 0x1

    .line 1156
    :cond_2
    if-nez p1, :cond_5

    .line 1157
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowSpn:Z

    .line 1158
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSpn:Ljava/lang/String;

    .line 1159
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowPlmn:Z

    .line 1160
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPlmn:Ljava/lang/String;

    .line 1161
    if-eqz v0, :cond_3

    .line 1162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    .line 1185
    :goto_0
    return-void

    .line 1164
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_4

    .line 1165
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameNoSIM:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 1167
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 1171
    :cond_5
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowSpnGemini:Z

    .line 1172
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSpnGemini:Ljava/lang/String;

    .line 1173
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mShowPlmnGemini:Z

    .line 1174
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mPlmnGemini:Ljava/lang/String;

    .line 1175
    if-eqz v0, :cond_6

    .line 1176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameGemini:Ljava/lang/String;

    goto :goto_0

    .line 1178
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_7

    .line 1179
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameNoSIM:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameGemini:Ljava/lang/String;

    goto :goto_0

    .line 1181
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;->mNetworkNameGemini:Ljava/lang/String;

    goto :goto_0
.end method
