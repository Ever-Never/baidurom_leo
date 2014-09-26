.class public Lcom/android/systemui/usb/UsbStorageService;
.super Landroid/app/Service;
.source "UsbStorageService.java"


# static fields
.field private static final SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/pc_connect.wav"

.field private static final SWITCH_OFF:I = 0x0

.field private static final SWITCH_ON:I = 0x1

.field private static final SWITCH_TURNING_OFF:I = 0x2

.field private static final SWITCH_TURNING_ON:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UsbStorageService"


# instance fields
.field private final D:Z

.field private mAsyncStorageHandler:Landroid/os/Handler;

.field private mBusy:Z

.field private mLastMountPath:Ljava/lang/String;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/android/systemui/usb/UsbStorageService;->D:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 59
    iput-boolean v1, p0, Lcom/android/systemui/usb/UsbStorageService;->mBusy:Z

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mLastMountPath:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/android/systemui/usb/UsbStorageService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbStorageService$1;-><init>(Lcom/android/systemui/usb/UsbStorageService;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    new-instance v0, Lcom/android/systemui/usb/UsbStorageService$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/UsbStorageService$2;-><init>(Lcom/android/systemui/usb/UsbStorageService;)V

    iput-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/UsbStorageService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageService;->handleUsbStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/UsbStorageService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mLastMountPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/UsbStorageService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageService;->switchDisplay(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/UsbStorageService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/UsbStorageService;->setFree(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/usb/UsbStorageService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/usb/UsbStorageService;->mBusy:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/UsbStorageService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageService;->checkStorageUsersAsync()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/UsbStorageService;)Landroid/os/storage/StorageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private checkStorageUsers()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageService$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/UsbStorageService$4;-><init>(Lcom/android/systemui/usb/UsbStorageService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method

.method private checkStorageUsersAsync()V
    .locals 7

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbStorageService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 285
    .local v2, ims:Landroid/os/storage/IMountService;
    if-nez v2, :cond_0

    .line 300
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, extStoragePath:Ljava/lang/String;
    :try_start_0
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    .line 292
    .local v4, stUsers:[I
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/systemui/usb/UsbStorageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 293
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v3

    .line 294
    .local v3, infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_1

    .line 298
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v3           #infoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v4           #stUsers:[I
    :cond_1
    :goto_1
    const-string v5, "UsbStorageService"

    const-string v6, "Enabling UMS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/systemui/usb/UsbStorageService;->switchUsbMassStorage(Z)V

    goto :goto_0

    .line 296
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 266
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 267
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 268
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleUsbStateChanged(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 259
    .local v0, connected:Z
    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageService;->stopSelf()V

    .line 263
    :cond_0
    return-void
.end method

.method private setFree(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageService$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/usb/UsbStorageService$3;-><init>(Lcom/android/systemui/usb/UsbStorageService;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method

.method private switchDisplay(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, iconId:I
    const/4 v2, 0x0

    .line 187
    .local v2, titleId:I
    const/4 v1, 0x0

    .line 189
    .local v1, messageId:I
    packed-switch p1, :pswitch_data_0

    .line 208
    const-string v3, "UsbStorageService"

    const-string v4, "unknown state!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/usb/UsbStorageService;->updateNotification(III)V

    .line 211
    return-void

    .line 191
    :pswitch_0
    const v0, 0x7f020296

    .line 192
    const v2, 0x7f0c00d6

    .line 193
    const v1, 0x7f0c00d7

    .line 194
    goto :goto_0

    .line 195
    :pswitch_1
    const v0, 0x7f020295

    .line 196
    const v2, 0x7f0c00d4

    .line 197
    const v1, 0x7f0c00d5

    .line 199
    goto :goto_0

    .line 200
    :pswitch_2
    const v0, 0x7f020298

    .line 201
    const v2, 0x7f0c00d8

    .line 202
    const v1, 0x7f0c00da

    .line 203
    goto :goto_0

    .line 204
    :pswitch_3
    const v0, 0x7f020297

    .line 205
    const v2, 0x7f0c00d9

    .line 206
    const v1, 0x7f0c00da

    .line 207
    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private switchUsbMassStorage(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/usb/UsbStorageService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/usb/UsbStorageService$5;-><init>(Lcom/android/systemui/usb/UsbStorageService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 105
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbStorageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 106
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 107
    const-string v1, "UsbStorageService"

    const-string v2, "Failed to get StorageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SystemUI UsbStorageService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, thr:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbStorageService;->mAsyncStorageHandler:Landroid/os/Handler;

    .line 114
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 115
    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageService;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/usb/UsbStorageService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 170
    const-string v0, "UsbStorageService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mAsyncStorageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mUsbStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbStorageService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 177
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v7

    .line 125
    .local v7, retCode:I
    if-nez p1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v7

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v3, v9, Landroid/util/DisplayMetrics;->density:F

    .line 131
    .local v3, fDensity:F
    const/high16 v9, 0x429a

    mul-float/2addr v9, v3

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v1, v9

    .line 133
    .local v1, btnWidth:I
    const-string v9, "statusbar_usb_toggle_action"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 136
    .local v6, rect:Landroid/graphics/Rect;
    const-string v9, "UsbStorageService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "busy = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/usb/UsbStorageService;->mBusy:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ne v9, v1, :cond_0

    iget-boolean v9, p0, Lcom/android/systemui/usb/UsbStorageService;->mBusy:Z

    if-nez v9, :cond_0

    .line 141
    iget-object v9, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    .line 142
    .local v8, vlist:[Landroid/os/storage/StorageVolume;
    const/4 v5, 0x0

    .line 143
    .local v5, last:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_3

    .line 148
    aget-object v9, v8, v4

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;

    aget-object v10, v8, v4

    invoke-virtual {v10}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 150
    move v5, v4

    .line 143
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 152
    :cond_3
    aget-object v9, v8, v5

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/usb/UsbStorageService;->mLastMountPath:Ljava/lang/String;

    .line 154
    iget-object v9, p0, Lcom/android/systemui/usb/UsbStorageService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v2

    .line 155
    .local v2, enable:Z
    const-string v9, "UsbStorageService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isUsbMassStorageEnabled = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/usb/UsbStorageService;->mBusy:Z

    .line 157
    const/4 v9, 0x1

    if-ne v2, v9, :cond_4

    .line 158
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/systemui/usb/UsbStorageService;->switchDisplay(I)V

    .line 161
    :goto_2
    if-nez v2, :cond_5

    const/4 v9, 0x1

    :goto_3
    invoke-direct {p0, v9}, Lcom/android/systemui/usb/UsbStorageService;->switchUsbMassStorage(Z)V

    goto/16 :goto_0

    .line 160
    :cond_4
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/android/systemui/usb/UsbStorageService;->switchDisplay(I)V

    goto :goto_2

    .line 161
    :cond_5
    const/4 v9, 0x0

    goto :goto_3
.end method

.method updateNotification(III)V
    .locals 14
    .parameter "iconId"
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 215
    .local v6, r:Landroid/content/res/Resources;
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 216
    .local v9, title:Ljava/lang/CharSequence;
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 218
    .local v3, message:Ljava/lang/CharSequence;
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 219
    .local v10, usbStorageNotification:Landroid/app/Notification;
    const v12, 0x1080543

    iput v12, v10, Landroid/app/Notification;->icon:I

    .line 220
    const v12, 0x7f020296

    if-eq p1, v12, :cond_0

    const v12, 0x7f020295

    if-ne p1, v12, :cond_1

    .line 223
    :cond_0
    const/4 v12, 0x2

    new-array v11, v12, [J

    fill-array-data v11, :array_0

    .line 224
    .local v11, vibrate:[J
    iput-object v11, v10, Landroid/app/Notification;->vibrate:[J

    .line 225
    const-string v12, "file:///system/media/audio/ui/pc_connect.wav"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 226
    .local v8, soundUri:Landroid/net/Uri;
    if-eqz v8, :cond_1

    .line 227
    iput-object v8, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 231
    .end local v8           #soundUri:Landroid/net/Uri;
    .end local v11           #vibrate:[J
    :cond_1
    const/4 v12, 0x2

    iput v12, v10, Landroid/app/Notification;->flags:I

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v10, Landroid/app/Notification;->when:J

    .line 234
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbStorageService;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f04002c

    invoke-direct {v1, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 235
    .local v1, contentView:Landroid/widget/RemoteViews;
    const v12, 0x1020016

    invoke-virtual {v1, v12, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 236
    const v12, 0x1020002

    invoke-virtual {v1, v12, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 237
    const v12, 0x7f090016

    iget v13, v10, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v12, v13}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 238
    const v12, 0x7f0900ba

    invoke-virtual {v1, v12, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 239
    iput-object v1, v10, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 242
    new-instance v7, Landroid/content/ComponentName;

    const-class v12, Lcom/android/systemui/usb/UsbStorageService;

    invoke-direct {v7, p0, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v7, serviceName:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v12, "statusbar_usb_toggle_action"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 245
    const v12, 0x7f020296

    if-eq p1, v12, :cond_2

    const v12, 0x7f020295

    if-ne p1, v12, :cond_3

    .line 248
    :cond_2
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {p0, v12, v2, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 249
    .local v5, pi:Landroid/app/PendingIntent;
    const v12, 0x7f0900ba

    invoke-virtual {v1, v12, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 252
    .end local v5           #pi:Landroid/app/PendingIntent;
    :cond_3
    const-string v12, "notification"

    invoke-virtual {p0, v12}, Lcom/android/systemui/usb/UsbStorageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 253
    .local v4, notificationMgr:Landroid/app/NotificationManager;
    iget v12, v10, Landroid/app/Notification;->icon:I

    invoke-virtual {v4, v12, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 254
    return-void

    .line 223
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
